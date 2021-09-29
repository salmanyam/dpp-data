/* $Id: orzhttpd.c 139 2007-06-15 20:29:54Z byshen $ */

#include "orzhttpd.h"


static void
signal_handler(int sig)
{
    switch (sig)
    {
#ifdef	USE_ALARM_TIME
	case SIGALRM:
	    server->now = time(NULL);
	    break;
#endif
    }
}

#ifdef	HTTPD_EVENT
void
http_add_event(struct event *ev, int timeout)
{
    struct timeval  tv;

    timerclear(&tv);
    tv.tv_sec = timeout;

    event_add(ev, &tv);
}
#endif

void
http_state_machine(CONN_t *conn)
{
    /* HTTP state machine */
    for (;;)
    {
	switch (conn->state)
	{
	    case HTTP_STATE_START:
#ifdef	HTTPD_FORK
		keeptime(0);
#endif
		conn->state = HTTP_STATE_READ;
		break;

	    case HTTP_STATE_READ:
		conn->state = http_read_request(conn);

		if (conn->state == HTTP_STATE_READ)
		    return;

		break;

	    case HTTP_STATE_REQUEST_OK:
		conn->state = http_request_parse(conn);
		break;

	    case HTTP_STATE_METHOD_OK:
		conn->state = http_header_parse(conn);
		break;

	    case HTTP_STATE_HEADER_OK:
		conn->state = http_response(conn);

		if (http_authorization(conn) != 0)
		{
		    conn->status.st = HTTP_STATUS_401;
		    conn->state = HTTP_STATE_ERROR;
		}
		break;

	    case HTTP_STATE_WRITE:
		if (conn->request.method == HTTP_METHOD_HEAD)
		{
		    conn->state = HTTP_STATE_FINISH;
		    close(conn->response.file.fd);
		    break;
		}

		conn->state = server->write(conn);

		if (conn->state == HTTP_STATE_WRITE)
		    return;

		close(conn->response.file.fd);
		break;

	    case HTTP_STATE_FINISH:
		if (HAS_OP(OP_LOGGING))		    /* access log */
		    log_request(conn);

		if (conn->keep_alive)		    /* connection keep-alive */
		{
		    conn_lazy_init(conn);
#ifdef	HTTPD_EVENT
		    http_add_event(&conn->ev_read, KEEP_ALIVE_TIMEOUT);
#endif
#ifdef	HTTPD_FORK
		    keeptime(KEEP_ALIVE_TIMEOUT);
#endif
		}
		else
		    connection_close(conn);	    /* connection close */

		return;

	    case HTTP_STATE_ERROR:
	    default:
#if 0
		fprintf(stderr, "[1;31merror\n[m");
#endif
		conn->keep_alive = 0;
		conn->state = http_error_status(conn);
		break;
	}
    }
}

#ifdef	HTTPD_FORK
static void
sig_chld(int sig)
{
    pid_t	    pid;
    int		    stat;

    while ((pid = waitpid(-1, &stat, WNOHANG)) > 0);
}
#endif

static inline void
start_daemon()
{
    int		fd, n;

    if (fork() != 0) exit(0);

    if (setsid() == -1)
	error_exit("setsid error");

    signal(SIGHUP, SIG_IGN);

    if (fork() != 0) exit(0);

    umask(0);

    /* close all fd except stdin, stdout, stderr */
    n = getdtablesize();
    for (fd = STDERR_FILENO + 1; fd < n; fd++)
	close(fd);

    /* move stdin to /dev/null */
    if ((fd = open("/dev/null", O_RDONLY)) != -1)
    {
	close(STDIN_FILENO);
	dup2(fd, STDIN_FILENO);
	close(fd);
    }

    /* move stdout to /dev/null */
    if ((fd = open("/dev/null", O_WRONLY)) != -1)
    {
	close(STDOUT_FILENO);
	dup2(fd, STDOUT_FILENO);
	close(fd);
    }

    /* TODO: syslog */
}

#ifdef	HTTPD_FORK
static inline void
http_use_fork(const int sock)
{
    CONN_t	   conn;

    conn_lazy_init(&conn);

    for (;;)
    {
	conn.fd = accept(sock, (struct sockaddr *)&conn.cin, &server->salen);

	if (fork() == 0)
	{
	    close(sock);

	    http_state_machine(&conn);

	    exit(0);
	}
	close(conn.fd);
    }
}
#endif

#ifdef	HTTPD_EVENT
static void
http_accept(int sock, short event, void *arg)
{
    CONN_t         *conn;

#ifdef	SLAB_ALLOCATOR
    conn = cache_alloc();
#else
    conn = (CONN_t *)malloc(sizeof(CONN_t));
#endif

    if (conn == NULL)
	return;

    conn_lazy_init(conn);

    if ((conn->fd = accept(sock, (struct sockaddr *)&conn->cin, &server->salen)) < 0)
    {
#ifdef	SLAB_ALLOCATOR
	cache_free(conn);
#endif
	return;
    }

    if (fcntl(conn->fd, F_SETFL, O_NONBLOCK) < 0)
    {
#ifdef	SLAB_ALLOCATOR
	cache_free(conn);
#endif
	return;
    }

    event_set(&conn->ev_read, conn->fd, EV_READ, http_connect, conn);
    event_set(&conn->ev_write, conn->fd, EV_WRITE, http_connect, conn);

    http_add_event(&conn->ev_read, HTTP_READ_TIMEOUT);
}

#ifdef	USE_ALARM_TIME
static void
use_alarm_time(void)
{
    struct itimerval	interval;

    /* alarm based time() optimization */
    signal(SIGALRM, signal_handler);

    interval.it_interval.tv_sec = 1;
    interval.it_interval.tv_usec = 0;
    interval.it_value.tv_sec = 1;
    interval.it_value.tv_usec = 0;

    /* setup periodic timer (1 second) */
    if (setitimer(ITIMER_REAL, &interval, NULL))
	error_exit("timer error");
}
#endif

static inline void
http_use_event(const int sock)
{
    struct event	ev;
    int			i;

#ifdef	SLAB_ALLOCATOR
    cache_init();
#endif

    if (HAS_OP(OP_DEBUG_MODE) == 1)
    {
	use_alarm_time();

	event_init();
	event_set(&ev, sock, EV_READ | EV_PERSIST, http_accept, NULL);
	event_add(&ev, NULL);
	event_dispatch();

	return;
    }

    for (i = 0; i < server->proc_num; i++)
	if (fork() == 0)
	{
	    use_alarm_time();

	    event_init();
	    event_set(&ev, sock, EV_READ | EV_PERSIST, http_accept, NULL);
	    event_add(&ev, NULL);
	    event_dispatch();
	}
}
#endif

inline void
start_httpd(void)
{
    int			sock, on = 1;
#ifdef	IPV6_HTTPD
    struct sockaddr_in6	sin;
#else
    struct sockaddr_in	sin;
#endif
#ifdef	FreeBSD
    struct accept_filter_arg afa;
#endif
    struct passwd      *pw;
    struct linger	linger;


    if ((pw = getpwnam(server->config.user)) == NULL)
	error_exit("no such user.");

    /* initialize time conversion information must before chroot */
    tzset();

#ifdef	HTTPD_CHROOT
    if (chroot(HTTPD_ROOT) != 0)
	error_exit("chroot needs root privilege.");
#endif
    if (chdir("/") != 0)
	error_exit("chdir error");

    if (HAS_OP(OP_DEBUG_MODE) == 0)
	start_daemon();

#ifdef	IPV6_HTTPD
    sock = socket(AF_INET6, SOCK_STREAM, IPPROTO_TCP);
#else
    sock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
#endif

#ifdef	HTTPD_EVENT
    if (fcntl(sock, F_SETFL, O_NONBLOCK) < 0)
	return;
#endif

    setsockopt(sock, SOL_SOCKET, SO_KEEPALIVE, (void *)&on, sizeof(on));
    setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, (void *)&on, sizeof(on));

    linger.l_onoff = 1;
    linger.l_linger = 5;
    setsockopt(sock, SOL_SOCKET, SO_LINGER, (void *)&linger, sizeof(linger));

#ifdef	FreeBSD	    /* accf_http */
    memset(&afa, 0, sizeof(afa));
    strcpy(afa.af_name, "httpready");
    setsockopt(sock, SOL_SOCKET, SO_ACCEPTFILTER, &afa, sizeof(afa));
#endif

    bzero(&sin, sizeof(sin));

#ifdef	IPV6_HTTPD
    sin.sin6_family = AF_INET6;
    sin.sin6_addr = in6addr_any;
    sin.sin6_port = htons(server->port);
#else
    sin.sin_family = AF_INET;
    sin.sin_addr.s_addr = htonl(INADDR_ANY);
    sin.sin_port = htons(server->config.port);
#endif

    server->salen = sizeof(sin);

    if (bind(sock, (struct sockaddr *)&sin, sizeof(sin)) == -1)
	error_exit("bind error");

    if (setgid(pw->pw_uid) == -1)
	error_exit("setgid error");

    if (setuid(pw->pw_uid) == -1)
	error_exit("setuid error");

    if (listen(sock, LISTENQ) == -1)
	error_exit("listen error");

#ifdef	HTTPD_FORK
    signal(SIGCHLD, sig_chld);
#endif

    /* ignore the SIGPIPE from sendfile() */
    signal(SIGPIPE, SIG_IGN);
    signal(SIGUSR1, SIG_IGN);

#ifdef	USE_ALARM_TIME
    server->now = time(NULL);
#endif

    if (HAS_OP(OP_LOGGING))
	server_log_init();

    fprintf(stderr, "Starting OrzHTTPd.\n");

#ifdef	HTTPD_EVENT
    http_use_event(sock);
#endif
#ifdef	HTTPD_FORK
    http_use_fork(sock);
#endif
}
