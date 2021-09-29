/* $Id: request.c 137 2007-06-15 08:11:30Z byshen $ */

#include "orzhttpd.h"


HTTP_STATE_t
http_read_request(CONN_t *conn)
{
    int			sz;

#ifdef	HTTPD_FORK
    keeptime(HTTP_READ_TIMEOUT);
#endif

    /* read HTTP request */
    while (conn->read_buf.used < BUFSIZE)
    {
	if ((sz = static_buffer_read(conn, &conn->read_buf)) < 0)
	{
#ifdef	HTTPD_EVENT
	    if (errno == EAGAIN || errno == EINTR)
	    {
		http_add_event(&conn->ev_read, HTTP_READ_TIMEOUT);
		return HTTP_STATE_READ;
	    }
#endif
	    conn->status.st = HTTP_STATUS_400;
	    return HTTP_STATE_ERROR;
	}
	else if (sz == 0)
	{
	    /* the other end close the connection -> KEEP-ALIVE */
	    conn->keep_alive = 0;

	    return HTTP_STATE_FINISH;
	}

	conn->read_buf.used += sz;

	if (memcmp(&conn->read_buf.buf[conn->read_buf.used] - 4, "\r\n\r\n", 4) == 0)
	    break;
    }

#ifdef	HTTPD_FORK
    keeptime(0);
#endif

    if (conn->read_buf.used >= BUFSIZE)
    {
	/* request read buffer is full */
	conn->status.st = HTTP_STATUS_400;

	return HTTP_STATE_ERROR;
    }

    conn->read_buf.buf[conn->read_buf.used - 1] = '\0';
    conn->read_buf.buf[conn->read_buf.used - 2] = '\0';

#ifdef	HTTPD_DEBUG
    server->log(ERROR_LOG, "%s\n", conn->read_buf.buf);
#endif
#if 0
    fprintf(stderr, "[1;32m%s\n[m", conn->read_buf.buf);
#endif
    return HTTP_STATE_REQUEST_OK;
}

static inline HTTP_STATE_t
set_userhome(CONN_t *conn)
{
    struct passwd      *pw;
    const char	       *user;
    char	       *ch;

    if ((user = conn->request.uri.path + 2) == NULL)
	return HTTP_STATE_METHOD_OK;

    if ((ch = strchr(user, '/')) != NULL)
	*ch = '\0';

    if ((pw = getpwnam(user)) != NULL)
    {
	if (ch != NULL)
	{
	    *ch = '/';

	    conn->request.uri.path = ch;
	    conn->basedir.path = pw->pw_dir;
	}
	else
	{
	    conn->status.st = HTTP_STATUS_301;
	    return HTTP_STATE_ERROR;
	}
    }
    return HTTP_STATE_METHOD_OK;
}


/* Remove "/../", "//", "/./" parts from path.
 *
 * /blah/..         gets  /
 * /blah/../foo     gets  /foo
 * /abc/./xyz       gets  /abc/xyz
 * /abc//xyz        gets  /abc/xyz
 */
#if 1
static void
request_path_simplify(char *path)
{
    char *pre, *out, *s, *start;

    /* Return if input string is invalid. */
    if (!path) return;

    /* Find the first non-delimiter character. */
    start = path;
    if (*start == '/') start++;

    for (out = start, pre = start; *out; out++)
    {
	/* If a delimiter is encountered, move on to the next iteration. */
        if (*out == '/') continue;

	/* Find out the next delimiter. */
        for (s = out; *(++s) != '/' && *s;);

	/* If the token matches "./", move on to the next. */
        if (*out == '.' && out == s-1)
            continue;

	/* If the token matches "../",
	 * search backward for the preceding delimiter. */
        else if (*out == '.' && *(out+1) == '.' && out == s-2)
	{
            for (pre -= 2; pre >= start && *pre != '/'; pre--);
            if (pre < start) pre = start; else pre++;
        }

	/* Copy the token until and including the next delimiter. */
        else
            for (; out <= s; *pre++ = *out++);

	/* Find the immediately preceding character of the next delimiter. */
        out = s-1;
    }

    /* Place the null character if necessary. */
    if (*(pre-1)) *pre = 0;
}
#else
/* assume the path start with '/' */
static void
request_path_simplify(char *path)
{
    enum {
	SLASH, SLASH_DOT, SLASH_DOT_DOT, OK
    } state;

    char *p, *q, c, null[] = "";

    if (path == NULL) return;

    state = OK;
    p = q = path;

    for (;;)
    {
	c = *p++;

	/* state machine */
	switch (state)
	{
	    case OK:
		if (c == '/') state = SLASH; break;

	    case SLASH:
		switch (c)
		{
		    case '/': q--; break;
		    case '.': state = SLASH_DOT; break;
		    default: state = OK; break;
		}
		break;

	    case SLASH_DOT:
		switch (c)
		{
		    case '\0': c = '/'; p = null;
		    case '/': q -= 2; state = SLASH; break;
		    case '.': state = SLASH_DOT_DOT; break;
		    default: state = OK; break;
		}
		break;

	    case SLASH_DOT_DOT:
		switch (c)
		{
		    case '\0': c = '/'; p = null;
		    case '/':
			for (q -= 3; q > path && q[-1] != '/'; q--);
			if (q > path) q--;
			state = SLASH;
			break;

		    default: state = OK; break;
		}
		break;
	}
	if ((*q++ = c) == '\0')
	    break;
    }
}
#endif

HTTP_STATE_t
http_request_parse(CONN_t *conn)
{
    char           *method, *uri = NULL, *proto = NULL;

    /* HTTP method parsing */
    method = conn->read_buf.buf;

    for (conn->request.header = conn->read_buf.buf;
	    *conn->request.header != '\n';
	    conn->request.header++)
    {
	switch (*conn->request.header)
	{
	    case '\r':
		*conn->request.header = '\0';
		break;

	    case ' ':
		*conn->request.header = '\0';
		if (uri == NULL)
		    uri = conn->request.header + 1;
		else
		    proto = conn->request.header + 1;
		break;
	}
    }
    conn->request.header++;

    if (uri == NULL || proto == NULL)
    {
	conn->status.st = HTTP_STATUS_400;
	return HTTP_STATE_ERROR;
    }

    /* XXX: URI MUST start with '/' */
    if (uri[0] != '/')
    {
	conn->status.st = HTTP_STATUS_400;
	return HTTP_STATE_ERROR;
    }

    /* HTTP version parsing */
    if (strncmp(proto, "HTTP/", sizeof("HTTP/") - 1) == 0)
    {
	char *major = proto + sizeof("HTTP/") - 1;
	char *minor = strchr(major, '.');

	if (minor == NULL || minor == major || *(minor + 1) == '\0')
	{
	    conn->status.st = HTTP_STATUS_505;
	    return HTTP_STATE_ERROR;
	}
	else
	    minor++;

	if (*major == '1' && *(minor + 1) == '\0')
	{
	    switch (*minor)
	    {
		case '1':
		    conn->request.version = HTTP_VERSION_1_1;

		    /* HTTP/1.1 -> keep-alive default TRUE */
		    conn->keep_alive = 1;

		    break;

		case '0':
		    conn->request.version = HTTP_VERSION_1_0;

		    /* HTTP/1.0 -> keep-alive default FALSE  */
		    conn->keep_alive = 0;

		    break;

		default:
		    conn->status.st = HTTP_STATUS_505;
		    return HTTP_STATE_ERROR;
	    }
	}
	else
	{
	    conn->status.st = HTTP_STATUS_505;
	    return HTTP_STATE_ERROR;
	}
    }
    else
    {
	conn->status.st = HTTP_STATUS_505;
	return HTTP_STATE_ERROR;
    }

    /* URI parsing */
    conn->request.uri.path = uri;
    conn->request.uri.path_raw = uri;

    if ((uri = strchr(uri, '?')) != NULL)
    {
	*uri = '\0';

	conn->request.uri.query = ++uri;
    }
    else
	conn->request.uri.query = NULL;

    if (http_method(conn, method) != 0)
    {
	conn->status.st = HTTP_STATUS_501;
	return HTTP_STATE_ERROR;
    }

    request_path_simplify((char *)conn->request.uri.path_raw);

    /* document root or user home directory ? */
    if (HAS_OP(OP_USER_HOME_DIR) && conn->request.uri.path[1] == '~')
	return set_userhome(conn);
    else
	return HTTP_STATE_METHOD_OK;
}

