/* $Id: sendfile.c 121 2007-06-10 06:29:02Z byshen $ */

#include "orzhttpd.h"


#ifdef	USE_SENDFILE

#ifdef	FreeBSD
#include <sys/uio.h>

HTTP_STATE_t
freebsd_sendfile(CONN_t *conn)
{
    off_t	    sbytes;

    if (sendfile(conn->response.file.fd, conn->fd, conn->response.file.offset,
		0, NULL, &sbytes, 0) == -1)
    {
	switch (errno)
	{
#ifdef	HTTPD_EVENT
	    case EAGAIN:
		conn->response.file.offset += sbytes;

		if (conn->response.content_length != conn->response.file.offset)
		    http_add_event(&conn->ev_write, HTTP_WRITE_TIMEOUT);

		return HTTP_STATE_WRITE;
#endif
	    default:
		conn->status.st = HTTP_STATUS_500;
		return HTTP_STATE_ERROR;
	}
    }


    return HTTP_STATE_FINISH;
}
#endif	/* FreeBSD */

#ifdef	Linux
#include <sys/sendfile.h>

inline HTTP_STATE_t
linux_sendfile(CONN_t *conn)
{
    int corked = 1;
    setsockopt(conn->fd, IPPROTO_TCP, TCP_CORK, &corked, sizeof(corked));

    if (sendfile(conn->fd, conn->response.file.fd,
		NULL, conn->response.content_length) == -1)
    {
	switch (errno)
	{
#ifdef	HTTPD_EVENT
	    case EAGAIN:
		http_add_event(&conn->ev_write, HTTP_WRITE_TIMEOUT);
		return HTTP_STATE_WRITE;
#endif
	    default:
		conn->status.st = HTTP_STATUS_500;
		return HTTP_STATE_ERROR;
	}

        conn->status.st = HTTP_STATUS_500;
        return HTTP_STATE_ERROR;
    }

    corked = 0;
    setsockopt(conn->fd, IPPROTO_TCP, TCP_CORK, &corked, sizeof(corked));

    return HTTP_STATE_FINISH;
}
#endif	/* Linux */

#else	/* USE_SENDFILE */

#ifdef USE_MMAP	    /* use Memory Mapped I/O */
inline HTTP_STATE_t
mmap_write(CONN_t *conn)
{
    char           *src;

    if ((src = mmap(0, conn->response.content_length, PROT_READ,
                    MAP_SHARED, conn->response.file.fd, 0)) == (char *)-1)
    {
        conn->status.st = HTTP_STATUS_500;
        return HTTP_STATE_ERROR;
    }

    /* FIXME: non-blocking write() */

    write(conn->fd, src, conn->response.content_length);

    munmap(src, conn->response.content_length);

    return HTTP_STATE_FINISH;
}
#else	/* USE_MMAP */

inline HTTP_STATE_t
write_only(CONN_t *conn)
{
    /* TODO: use write() only */

    return HTTP_STATE_FINISH;
}

#endif	/* USE_MMAP */

#endif	/* USE_SENDFILE */

inline void
server_write_init(void)
{
#ifdef USE_MMAP
    server->write = mmap_write;
#else

#ifdef	FreeBSD
    server->write = freebsd_sendfile;
#endif
#ifdef	Linux
    server->write = NULL;//linux_sendfile;
#endif

#endif
    if (server->write == NULL)
	error_exit("server->write == NULL");
}

