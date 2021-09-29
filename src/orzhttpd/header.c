/* $Id: header.c 139 2007-06-15 20:29:54Z byshen $ */

#include "orzhttpd.h"

static void
hdr_connection(CONN_t *conn, const char *arg)
{
    if (strcasecmp(arg, "close") == 0)
	conn->keep_alive = 0;
#if 0
    if (strcasecmp(arg, "keep-alive") == 0)
	conn->keep_alive = 1;
#endif
}

static void
hdr_host(CONN_t *conn, const char *arg)
{
    conn->request.uri.authority = arg;
}

static void
hdr_if_modified_since(CONN_t *conn, const char *arg)
{
    conn->request.if_modified_since = arg;
}

static void
hdr_user_agent(CONN_t *conn, const char *arg)
{
    conn->request.user_agent = arg;
}

static void
hdr_authorization(CONN_t *conn, const char *arg)
{
    conn->request.authorization = arg;
}

/* NB: the following table must be sorted lexically. */
static const HANDLER_t header_tab[] = {
    {"Accept",			NULL},
    {"Accept-Charset",		NULL},
    {"Accept-Encoding",		NULL},
    {"Accept-Language",		NULL},
    {"Accept-Ranges",		NULL},
    {"Age",			NULL},
    {"Allow",			NULL},
    {"Authorization",		hdr_authorization},
    {"Cache-Control",		NULL},
    {"Connection",		hdr_connection},
    {"Content-Encoding",	NULL},
    {"Content-Language",	NULL},
    {"Content-Length",		NULL},
    {"Content-Location",	NULL},
    {"Content-MD5",		NULL},
    {"Content-Range",		NULL},
    {"Content-Type",		NULL},
    {"Date",			NULL},
    {"ETag",			NULL},
    {"Expires",			NULL},
    {"Expect",			NULL},
    {"From",			NULL},
    {"Host",			hdr_host},
    {"If-Match",		NULL},
    {"If-Modified-Since",	hdr_if_modified_since},
    {"If-None-Match",		NULL},
    {"If-Range",		NULL},
    {"If-Unmodified-Since",	NULL},
    {"Last-Modified",		NULL},
    {"Location",		NULL},
    {"Max-Forwards",		NULL},
    {"Pragma",			NULL},
    {"Proxy-Authenticate",	NULL},
    {"Proxy-Authorization",	NULL},
    {"Range",			NULL},
    {"Referer",			NULL},
    {"Retry-After",		NULL},
    {"Server",			NULL},
    {"TE",			NULL},
    {"Trailer",			NULL},
    {"Transfer-Encoding",	NULL},
    {"Upgrade",			NULL},
    {"User-Agent",		hdr_user_agent},
    {"Vary",			NULL},
    {"Via",			NULL},
    {"WWW-Authenticate",	NULL},
    {"Warning",			NULL}
};

static void
http_header(CONN_t *conn, const char *field, const char *arg)
{
    HANDLER_t	    tmp, *entry;

    tmp.key = field;
    if ((entry = bsearch(&tmp, header_tab,
		    sizeof(header_tab)/sizeof(HANDLER_t),
		    sizeof(HANDLER_t), handlercmp)) != NULL)
	if (entry->handler)
	    entry->handler(conn, arg);
    return;
}

HTTP_STATE_t
http_header_parse(CONN_t *conn)
{
    char	   *start, *end, *arg;

    /* HTTP header parsing */
    for (start = conn->request.header; (end = strchr(start, '\n')) != NULL; start = ++end)
    {
	end[-1] = '\0';

	if ((arg = strchr(start, ':')) != NULL)
	{
	    *arg = '\0';
	    do arg++; while (*arg == ' ');

	    http_header(conn, start, arg);

#ifdef	HTTPD_DEBUG
	    fprintf(stderr, "%s: %s\n", start, arg);
#endif
	}
    }

    /* The Host request-header field MUST accompany all HTTP/1.1 requests. */
    if (*conn->request.uri.authority == '-')
    {
	if (conn->request.version == HTTP_VERSION_1_1)
	{
	    conn->status.st = HTTP_STATUS_400;
	    return HTTP_STATE_ERROR;
	}
    }

    /* ensure virtual host working correctly */
    if (strchr(conn->request.uri.authority, '/'))
    {
	conn->status.st = HTTP_STATUS_400;
	return HTTP_STATE_ERROR;
    }

#if 0
    fprintf(stderr, "%s %s %s\n",
	    conn->uri.authority, conn->uri.path, conn->uri.query);
#endif

    return HTTP_STATE_HEADER_OK;
}

