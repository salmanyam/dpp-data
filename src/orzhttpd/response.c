/* $Id: response.c 137 2007-06-15 08:11:30Z byshen $ */

#include "orzhttpd.h"


static char *
GMT_time(char *datemsg, size_t size, time_t * clock)
{
    int ret;

    if (clock)
	ret = strftime(datemsg, size, "%a, %d %b %Y %T GMT", gmtime(clock));
    else
    {
#ifndef	USE_ALARM_TIME
	const time_t	now = time(NULL);

	ret = strftime(datemsg, size, "%a, %d %b %Y %T GMT", gmtime(&now));
#else
	ret = strftime(datemsg, size, "%a, %d %b %Y %T GMT", gmtime(&server->now));
#endif
    }

    if (ret == 0)
	*datemsg = '\0';

    return datemsg;
}

#define	WRITE_BUFFER_APPEND_HEADER(conn, response, format, arg)	    \
    do {							    \
	snprintf(response, sizeof(response), format, arg);	    \
	static_buffer_append(conn, &conn->write_buf, response);	    \
    } while (0)

static inline void
set_general_header(CONN_t *conn)
{
    char	    response[BUFSIZE], datemsg[30];

    WRITE_BUFFER_APPEND_HEADER(conn, response,
	    "Date: %s\r\n", GMT_time(datemsg, sizeof(datemsg), NULL));

    WRITE_BUFFER_APPEND_HEADER(conn, response,
	    "Connection: %s\r\n", conn->keep_alive ? "keep-alive" : "close");
}

static inline void
set_response_header(CONN_t *conn)
{
    char	    response[BUFSIZE];

    snprintf(response, sizeof(response),
	     "%s %s (%s)\r\n",
	     "Server:", SERVER_VERSION, server->sysname);

    static_buffer_append(conn, &conn->write_buf, response);
}

static inline void
set_entity_header(CONN_t *conn)
{
    char	    response[BUFSIZE];

    if (conn->response.content_type)
    {
	WRITE_BUFFER_APPEND_HEADER(conn, response,
		"Content-Type: %s\r\n", conn->response.content_type);
    }

    WRITE_BUFFER_APPEND_HEADER(conn, response,
	    "Content-Length: %d\r\n", (int)conn->response.content_length);

    if (conn->response.file.st)
    {
	char	    datemsg[30];

	WRITE_BUFFER_APPEND_HEADER(conn, response,
		"Last-Modified: %s\r\n",
		GMT_time(datemsg, sizeof(datemsg),
		    &conn->response.file.st->st_mtime));
    }

    snprintf(response, sizeof(response), "\r\n");
    static_buffer_append(conn, &conn->write_buf, response);
}

void
http_response_header(CONN_t *conn)
{
    set_general_header(conn);
    set_response_header(conn);
    set_entity_header(conn);
}

HTTP_STATE_t
http_response(CONN_t *conn)
{
    int		    isdir = 0;
    char	    fpath[MAXPATHLEN];

    if (conn->state == HTTP_STATE_ERROR)
    {
	/* custom error messages */
	snprintf(fpath, sizeof(fpath), "%s", conn->request.uri.path);
    }
    else
    {
	/* document root or user home directory ? */
	if (HAS_OP(OP_USER_HOME_DIR) && conn->basedir.path != server->config.basedir)
	{
	    snprintf(fpath, sizeof(fpath), "%s/%s%s",
		    conn->basedir.path,
		    server->config.userdir,
		    conn->request.uri.path);
	}
	else if (HAS_OP(OP_VIRTUAL_HOST))
	{
	    snprintf(fpath, sizeof(fpath), "%s/%s",
		    server->config.vhostbase,
		    conn->request.uri.authority);

	    if (is_dir(fpath) == 0)
		conn->request.uri.authority = server->config.host;

	    snprintf(fpath, sizeof(fpath), "%s/%s%s",
		    server->config.vhostbase,
		    conn->request.uri.authority,
		    conn->request.uri.path);
	}
	else
	    snprintf(fpath, sizeof(fpath), "%s%s",
		    conn->basedir.path, conn->request.uri.path);
    }

    /* check index file */
    if ((conn->response.file.st = stat_cache_find(fpath)) != NULL
	    && S_ISDIR(conn->response.file.st->st_mode))
    {
	isdir = 1;

	strcat(fpath, server->config.indexfile);

	/* XXX: if DEFAULT_PAGE is a directory? */
	if ((conn->response.file.st = stat_cache_find(fpath)) != NULL
		&& S_ISDIR(conn->response.file.st->st_mode))
	{
	    if (HAS_OP(OP_DIR_LISTING))
		return dirlist(conn, fpath, conn->request.uri.path);
	    else
	    {
		conn->status.st = HTTP_STATUS_403;
		return HTTP_STATE_ERROR;
	    }
	}
    }

    if ((conn->response.file.fd = open(fpath, O_RDONLY)) < 0)
    {
	if (isdir)
	{
	    if (HAS_OP(OP_DIR_LISTING))
		return dirlist(conn, fpath, conn->request.uri.path);
	    else
	    {
		conn->status.st = HTTP_STATUS_403;
		return HTTP_STATE_ERROR;
	    }
	}
	else
	    switch (errno)
	    {
	    case EACCES:
		conn->status.st = HTTP_STATUS_403;
		return HTTP_STATE_ERROR;

	    case ENOENT:
		conn->status.st = HTTP_STATUS_404;
		return HTTP_STATE_ERROR;
	    }
	conn->status.st = HTTP_STATUS_500;
	return HTTP_STATE_ERROR;
    }

    if (conn->response.file.st == NULL)
    {
	conn->status.st = HTTP_STATUS_500;
	return HTTP_STATE_ERROR;
    }

    conn->response.file.path = fpath;
    conn->response.content_type = get_MIME(conn->response.file.path);

    /* If-Modified-Since */
    if (conn->request.if_modified_since && conn->state != HTTP_STATE_ERROR)
    {
	struct tm	    time;

	strptime(conn->request.if_modified_since, "%a, %d %b %Y %T GMT", &time);

	if (conn->response.file.st->st_mtime <= timegm(&time))
	{
	    conn->status.st = HTTP_STATUS_304;
	    return HTTP_STATE_ERROR;
	}
    }

    conn->response.content_length = conn->response.file.st->st_size;

    http_response_status(conn);
    http_response_header(conn);

    /* write HTTP response header */
#if 0
    fprintf(stderr, "[1;36m%s[m", conn->write_buf.buf);
#endif
    static_buffer_write(conn, &conn->write_buf);

    return HTTP_STATE_WRITE;
}
