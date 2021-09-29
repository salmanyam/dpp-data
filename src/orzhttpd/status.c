/* $Id: status.c 139 2007-06-15 20:29:54Z byshen $ */

#include "orzhttpd.h"


typedef struct status {
    int code;
    const char *def;
    HTTP_STATE_t (*handler)(CONN_t *conn, struct status *status);
} STATUS_t;

static void
status_line(CONN_t *conn, STATUS_t *status)
{
    char	    response[BUFSIZE];

    snprintf(response, sizeof(response), "%s %d %s\r\n",
	    http_version(conn), status->code, status->def);

    static_buffer_init(&conn->write_buf);
    static_buffer_append(conn, &conn->write_buf, response);
}

HTTP_STATE_t
status_move(CONN_t *conn, STATUS_t *status)
{
    char	    response[BUFSIZE];

    conn->request.uri.authority = server->config.host;

    http_response_status(conn);

    snprintf(response, sizeof(response), "%s http://%s%s/\r\n",
	    "Location:",
	    conn->request.uri.authority,
	    conn->request.uri.path);
    static_buffer_append(conn, &conn->write_buf, response);

    http_response_header(conn);
    static_buffer_write(conn, &conn->write_buf);

    return HTTP_STATE_FINISH;
}

HTTP_STATE_t
status_not_modified(CONN_t *conn, STATUS_t *status)
{
    conn->response.content_length = 0;

    status_line(conn, status);
    http_response_header(conn);

    static_buffer_write(conn, &conn->write_buf);
    return HTTP_STATE_FINISH;
}

HTTP_STATE_t
status_unauth(CONN_t *conn, STATUS_t *status)
{
    char	    response[BUFSIZE];

    status_line(conn, status);

    /* TODO */
    snprintf(response, sizeof(response),
	    "WWW-Authenticate: Digest realm=\"%s\", nonce=\"%s\", qop=\"auth\"\r\n",
	    "OrzHTTPd", "test");
    static_buffer_append(conn, &conn->write_buf, response);

    static_buffer_write(conn, &conn->write_buf);
    return HTTP_STATE_FINISH;
}

static const STATUS_t status_tab[] = {
	{ HTTP_STATUS_100, "Continue",				NULL },
	{ HTTP_STATUS_101, "Switching Protocols",		NULL },
	{ HTTP_STATUS_200, "OK",				NULL },
	{ HTTP_STATUS_201, "Created",				NULL },
	{ HTTP_STATUS_202, "Accepted",				NULL },
	{ HTTP_STATUS_203, "Non-Authoritative Information",	NULL },
	{ HTTP_STATUS_204, "No Content",			NULL },
	{ HTTP_STATUS_205, "Reset Content",			NULL },
	{ HTTP_STATUS_206, "Partial Content",			NULL },
	{ HTTP_STATUS_300, "Multiple Choices",			NULL },
	{ HTTP_STATUS_301, "Moved Permanently",			status_move },
	{ HTTP_STATUS_302, "Found",				NULL },
	{ HTTP_STATUS_303, "See Other",				NULL },
	{ HTTP_STATUS_304, "Not Modified",			status_not_modified },
	{ HTTP_STATUS_305, "Use Proxy",				NULL },
	{ HTTP_STATUS_306, "(Unused)",				NULL },
	{ HTTP_STATUS_307, "Temporary Redirect",		NULL },
	{ HTTP_STATUS_400, "Bad Request",			NULL },
	{ HTTP_STATUS_401, "Unauthorized",			status_unauth },
	{ HTTP_STATUS_402, "Payment Required",			NULL },
	{ HTTP_STATUS_403, "Forbidden",				NULL },
	{ HTTP_STATUS_404, "Not Found",				NULL },
	{ HTTP_STATUS_405, "Method Not Allowed",		NULL },
	{ HTTP_STATUS_406, "Not Acceptable",			NULL },
	{ HTTP_STATUS_407, "Proxy Authentication Required",	NULL },
	{ HTTP_STATUS_408, "Request Timeout",			NULL },
	{ HTTP_STATUS_409, "Conflict",				NULL },
	{ HTTP_STATUS_410, "Gone",				NULL },
	{ HTTP_STATUS_411, "Length Required",			NULL },
	{ HTTP_STATUS_412, "Precondition Failed",		NULL },
	{ HTTP_STATUS_413, "Request Entity Too Large",		NULL },
	{ HTTP_STATUS_414, "Request-URI Too Long",		NULL },
	{ HTTP_STATUS_415, "Unsupported Media Type",		NULL },
	{ HTTP_STATUS_416, "Requested Range Not Satisfiable",	NULL },
	{ HTTP_STATUS_417, "Expectation Failed",		NULL },
	{ HTTP_STATUS_500, "Internal Server Error",		NULL },
	{ HTTP_STATUS_501, "Not Implemented",			NULL },
	{ HTTP_STATUS_502, "Bad Gateway",			NULL },
	{ HTTP_STATUS_503, "Service Not Available",		NULL },
	{ HTTP_STATUS_504, "Gateway Timeout",			NULL },
	{ HTTP_STATUS_505, "HTTP Version Not Supported",	NULL }
};

static int
statuscmp(const void *a, const void *b)
{
    return ((const STATUS_t *)a)->code - ((const STATUS_t *)b)->code;
}

static inline const char *
get_status(const int code)
{
    STATUS_t tmp, *status;

    tmp.code = code;
    if ((status = bsearch(&tmp, status_tab,
		    sizeof(status_tab)/sizeof(STATUS_t),
		    sizeof(STATUS_t), statuscmp)) != NULL)
	return status->def;

    return NULL;
}

void
http_response_status(CONN_t *conn)
{
    char	    response[BUFSIZE];

    snprintf(response, sizeof(response), "%s %d %s\r\n",
	    http_version(conn),
	    conn->status.st,
	    get_status(conn->status.st));

    static_buffer_init(&conn->write_buf);
    static_buffer_append(conn, &conn->write_buf, response);
}

static HTTP_STATE_t
status_default_handler(CONN_t *conn, STATUS_t *status)
{
    char	    response[BUFSIZE];

    if (conn->status.st >= HTTP_STATUS_400)
    {
#ifdef	HTTPD_DEBUG
	server->log(ERROR_LOG, "%s", response);
#endif

	if (HAS_OP(OP_CUSTOM_ERRMSG))
	{
	    /* XXX: change to error message path */
	    conn->basedir.path = server->config.errmsgpath;

	    /* checking error pages are available or not */
	    snprintf(response, sizeof(response),
		    "%s/%d.html", conn->basedir.path, conn->status.st);

	    if (is_regular_file(response))
	    {
		/* show error page */
		conn->request.uri.path = response;

		http_response(conn);
		return HTTP_STATE_WRITE;
	    }
	}
	/* no error page -> just send status */
	status_line(conn, status);
	static_buffer_write(conn, &conn->write_buf);
    }

    return HTTP_STATE_FINISH;
}

HTTP_STATE_t
http_error_status(CONN_t *conn)
{
    STATUS_t tmp, *status;

    tmp.code = conn->status.st;
    if ((status = bsearch(&tmp, status_tab,
		    sizeof(status_tab)/sizeof(STATUS_t),
		    sizeof(STATUS_t), statuscmp)) != NULL)
    {
	if (status->handler)
	    return status->handler(conn, status);
	else
	    return status_default_handler(conn, status);
    }

    return HTTP_STATE_FINISH;
}

