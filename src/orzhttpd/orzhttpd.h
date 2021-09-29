/* $Id: orzhttpd.h 139 2007-06-15 20:29:54Z byshen $ */

#ifndef _ORZ_HTTPD_H_
#define _ORZ_HTTPD_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include <stdarg.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include <netinet/in.h>
#include <signal.h>
#include <errno.h>
#include <libgen.h>
#include <dirent.h>

#ifdef	Linux
#ifndef __USE_XOPEN
#define __USE_XOPEN
#endif
#include <netinet/tcp.h>
#endif

#include <sys/mman.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>
#include <time.h>
#include <pwd.h>

#include <sys/utsname.h>
#include <sys/time.h>

#include "queue.h"
#include "tree.h"

#define	HTTPD_EVENT
#undef	HTTPD_FORK

#ifndef	HTTPD_FORK
#define	USE_ALARM_TIME
#endif

#define	HTTP_READ_TIMEOUT	60
#define	HTTP_WRITE_TIMEOUT	180
#define	KEEP_ALIVE_TIMEOUT	5

#ifdef HTTPD_EVENT
#include <event.h>
#endif

/* -------------------------------- */
/*  Startup Options and Features    */
/* -------------------------------- */

#define	OP_DEBUG_MODE		0x00000001
#define	OP_USER_HOME_DIR	0x00000002	/* user personal directory */
#define	OP_DIR_LISTING		0x00000004	/* list directory contents */
#define	OP_VIRTUAL_HOST		0x00000008	/* virtual host */
#define	OP_LOGGING		0x00000010	/* access & error log */
#define	OP_CUSTOM_ERRMSG	0x00000020	/* custom error messages */
#define	OP_IPV6_HTTPD		0x00000040	/* IPv6 support */
#define	OP_CHROOT		0x00000080

#define SET_OP(OP)  (server->config.options |= OP)
#define HAS_OP(OP)  (server->config.options & OP)


#undef	IPV6_HTTPD				/* enable IPv6 support or not */

/* -------------------------------- */
/*  Server Configs                  */
/* -------------------------------- */

#define	SERVER_VERSION	"OrzHTTPd/0.0.6"

#ifdef	HTTPD_CHROOT
#define	HTTPD_ROOT	"/usr/local/www"	/* root dir */
#endif

#undef	HTTPD_DEBUG

#define	SLAB_ALLOCATOR

#define	USE_SENDFILE	/* use sendfile() to make the performance better */
#undef	USE_MMAP

#define	BUFSIZE		4096
#define	LISTENQ		5

#ifndef	MAXPATHLEN
#define	MAXPATHLEN	512
#endif

/* -------------------------------- */
/*  Data Structures                 */
/* -------------------------------- */

typedef enum {
    HTTP_STATE_START,
    HTTP_STATE_READ,
    HTTP_STATE_WRITE,
    HTTP_STATE_REQUEST_OK,
    HTTP_STATE_METHOD_OK,
    HTTP_STATE_HEADER_OK,
    HTTP_STATE_ERROR,
    HTTP_STATE_FINISH
} HTTP_STATE_t;

typedef enum {
    HTTP_VERSION_1_0, HTTP_VERSION_1_1
} HTTP_VERSION_t;

typedef enum {
    HTTP_METHOD_CONNECT,
    HTTP_METHOD_DELETE,
    HTTP_METHOD_GET,
    HTTP_METHOD_HEAD,
    HTTP_METHOD_OPTIONS,
    HTTP_METHOD_POST,
    HTTP_METHOD_PUT,
    HTTP_METHOD_TRACE
} HTTP_METHOD_t;

typedef enum {

    /* Informational 1xx  ... */
    HTTP_STATUS_100 = 100,
    HTTP_STATUS_101,

    /* Successful 2xx  ... */
    HTTP_STATUS_200 = 200,
    HTTP_STATUS_201,
    HTTP_STATUS_202,
    HTTP_STATUS_203,
    HTTP_STATUS_204,
    HTTP_STATUS_205,
    HTTP_STATUS_206,

    /* Redirection 3xx  ... */
    HTTP_STATUS_300 = 300,
    HTTP_STATUS_301,
    HTTP_STATUS_302,
    HTTP_STATUS_303,
    HTTP_STATUS_304,
    HTTP_STATUS_305,
    HTTP_STATUS_306,
    HTTP_STATUS_307,

    /* Client Error 4xx  ... */
    HTTP_STATUS_400 = 400,
    HTTP_STATUS_401,
    HTTP_STATUS_402,
    HTTP_STATUS_403,
    HTTP_STATUS_404,
    HTTP_STATUS_405,
    HTTP_STATUS_406,
    HTTP_STATUS_407,
    HTTP_STATUS_408,
    HTTP_STATUS_409,
    HTTP_STATUS_410,
    HTTP_STATUS_411,
    HTTP_STATUS_412,
    HTTP_STATUS_413,
    HTTP_STATUS_414,
    HTTP_STATUS_415,
    HTTP_STATUS_416,
    HTTP_STATUS_417,

    /* Server Error 5xx  ... */
    HTTP_STATUS_500 = 500,
    HTTP_STATUS_501,
    HTTP_STATUS_502,
    HTTP_STATUS_503,
    HTTP_STATUS_504,
    HTTP_STATUS_505

} HTTP_STATUS_t;

typedef enum {
    ACCESS_LOG, ERROR_LOG
} LOG_TYPE_t;

typedef struct {
    char buf[BUFSIZE];
    int used;
} STATIC_BUFFER_t;

typedef struct {
    char *buf;
    int used;
    size_t size;
} DYNAMIC_BUFFER_t;

typedef struct {
    const char *scheme;
    const char *authority;
    const char *path;
    const char *path_raw;
    const char *query;
} URI_t;

typedef struct {
    const char *path;
} DIR_t;

typedef struct {
    const char *username;
    const char *uri;
    const char *nonce;
    const char *nc;
    const char *cnonce;
    const char *qop;
    const char *response;
} HTTP_AUTH_t;

typedef struct {
    HTTP_METHOD_t method;   /* HTTP method */
    URI_t uri;		    /* URI */
    HTTP_VERSION_t version; /* HTTP version */

    char *header;	    /* point to the HTTP header located in read buffer */

    const char *user_agent;
    const char *if_modified_since;

    const char *authorization;
    HTTP_AUTH_t auth;
} REQUEST_t;

typedef struct {
    size_t content_length;
    const char *content_type;
    struct {
	int fd;		    /* file descriptor */
	char *path;	    /* file path */
	off_t offset;	    /* file offset for non-blocking I/O */
	struct stat *st;    /* file stat */
    } file;
} RESPONSE_t;

typedef struct conn {
    STATIC_BUFFER_t read_buf;	    /* HTTP header read buffer */
    STATIC_BUFFER_t write_buf;	    /* HTTP header write buffer */

    int fd;		    /* connection fd */
    HTTP_STATE_t state;	    /* for state machine */

    REQUEST_t request;
    RESPONSE_t response;

    DIR_t basedir;	    /* default doc root, user home dir, or virtual host */

#ifdef  IPV6_HTTPD
    struct sockaddr_in6 cin;
#else
    struct sockaddr_in cin;
#endif

    struct {
	HTTP_STATUS_t st;   /* HTTP status */
    } status;

#ifdef	HTTPD_EVENT
    struct event ev_read;   /* for libevent read event */
    struct event ev_write;  /* for libevent write event */
#endif

    int keep_alive;

} CONN_t;

typedef struct {
    uint16_t port;	    /* server port number */
    const char *user;	    /* server user */
    const char *host;	    /* default host */
    const char *basedir;    /* document root */
    const char *vhostbase;  /* virtual host base */
    const char *errmsgpath; /* error message path */
    const char *indexfile;  /* default page */
    const char *userdir;    /* user directory */
    const char *accesslog;  /* name of the access log */
    const char *errorlog;   /* name of the error log */
    const char *passfile;   /* name of the authentication password file */
    unsigned int options;   /* bit map of the server options */
} CONFIG_t;

typedef struct {
    time_t now;		    /* alarm based time() optimization */
    socklen_t salen;	    /* socket length */
    unsigned int proc_num;  /* process number */

    char sysname[SYS_NMLN]; /* name of the server OS */

    const char *configfile; /* name of the configuration file */
    CONFIG_t config;	    /* server configuration (read from config.xml) */

    /* server interface */
    HTTP_STATE_t (*write)(CONN_t *);

    void (*log)(LOG_TYPE_t, const char *, ...);
    FILE *access_log;
    FILE *error_log;
} SERVER_t;

typedef struct {
    const char *key;
    void (*handler)(CONN_t *conn, const char *arg);
} HANDLER_t;

/* -------------------------------- */
/*  Others                          */
/* -------------------------------- */

extern SERVER_t *server;

extern void start_httpd(void);
extern void http_server_msg(CONN_t *);
extern void http_connect(int, short, void *);
extern void http_state_machine(CONN_t *);
extern void http_response_status(CONN_t *);
extern void http_response_header(CONN_t *);

extern HTTP_STATE_t http_read_request(CONN_t *);
extern HTTP_STATE_t http_request_parse(CONN_t *);
extern HTTP_STATE_t http_header_parse(CONN_t *);
extern HTTP_STATE_t http_response(CONN_t *);
extern HTTP_STATE_t http_error_status(CONN_t *);
extern HTTP_STATE_t dirlist(CONN_t *, const char *, const char *);

extern const char * http_version(CONN_t *);
extern const char * http_method_str(CONN_t *);
extern int http_method(CONN_t *, const char *);
extern int http_authorization(CONN_t *);
extern void log_request(CONN_t *);
extern const char * get_MIME(const char *);
extern int is_dir(const char *);
extern int is_regular_file(const char *);
extern int handlercmp(const void *, const void *);
extern void server_write_init(void);
extern void server_log_init(void);
extern void error_exit(const char *);
extern void keeptime(const long);

extern void static_buffer_init(STATIC_BUFFER_t *);
extern int static_buffer_read(CONN_t *, STATIC_BUFFER_t *);
extern void static_buffer_write(CONN_t *, STATIC_BUFFER_t *);
extern void static_buffer_append(CONN_t *, STATIC_BUFFER_t *, char *);

extern void dynamic_buffer_init(DYNAMIC_BUFFER_t *);
extern void dynamic_buffer_free(DYNAMIC_BUFFER_t *);
extern int dynamic_buffer_read(CONN_t *, DYNAMIC_BUFFER_t *);
extern void dynamic_buffer_write(CONN_t *, DYNAMIC_BUFFER_t *);
extern void dynamic_buffer_append(CONN_t *, DYNAMIC_BUFFER_t *, char *);

#ifdef	SLAB_ALLOCATOR
extern void cache_init(void);
extern CONN_t * cache_alloc(void);
extern void cache_free(CONN_t *);
#endif

extern void conn_lazy_init(CONN_t *);
extern void connection_close(CONN_t *);
extern void http_add_event(struct event *, int);
extern struct stat * stat_cache_find(const char *);
extern void stat_cache_init(void);
extern void read_xml_config(void);

#endif	/* _ORZ_HTTPD_H_ */
