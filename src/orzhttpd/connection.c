/* $Id: connection.c 134 2007-06-14 19:44:06Z byshen $ */

#include "orzhttpd.h"

void
conn_lazy_init(CONN_t *conn)
{
#if 0
    bzero(conn, sizeof(CONN_t));
#else
    conn->response.file.offset = 0;
    conn->response.content_length = 0;
    conn->response.content_type = NULL;
    conn->basedir.path = server->config.basedir;
    conn->request.if_modified_since = NULL;
    conn->request.authorization = NULL;
    conn->response.file.st = NULL;

    conn->request.uri.authority = "-";
    conn->request.user_agent = "-";

    static_buffer_init(&conn->read_buf);
    static_buffer_init(&conn->write_buf);
#endif
    conn->status.st = HTTP_STATUS_200;
    conn->state = HTTP_STATE_START;
}

void
connection_close(CONN_t *conn)
{
#if 0
    fprintf(stderr, "[1;33mconnection close\n[m");
#endif

    shutdown(conn->fd, SHUT_RDWR);
    close(conn->fd);

#ifdef	SLAB_ALLOCATOR
    conn_lazy_init(conn);
    cache_free(conn);
#else
    free(conn);
#endif
}

#ifdef	HTTPD_EVENT
void
http_connect(int fd, short event, void *arg)
{
    CONN_t *conn = (CONN_t *) arg;

    switch (event)
    {
	case EV_READ:
#if 0
	    fprintf(stderr, "[1;35mread event\n[m");
#endif
	    http_state_machine(conn);
	    break;

	case EV_WRITE:
#if 0
	    fprintf(stderr, "[1;35mwrite event\n[m");
#endif
	    http_state_machine(conn);
	    break;

	case EV_TIMEOUT:
#if 0
	    fprintf(stderr, "[1;35mtimeout event\n[m");
#endif
	    connection_close(conn);
	    break;
    }
}
#endif

