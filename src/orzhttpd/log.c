/* $Id: log.c 141 2009-06-11 15:16:16Z byshen $ */

#include "orzhttpd.h"


static void
serverlog(LOG_TYPE_t type, const char *format, ...)
{
    FILE	   *log;
    char	    buf[BUFSIZE];
    va_list	    ap;

    switch (type)
    {
	case ACCESS_LOG:
	    log = server->access_log;
	    break;

	case ERROR_LOG:
	    log = server->error_log;
	    break;

	default:
	    return;
    }

    if (format != NULL)
    {
	va_start(ap, format);
	//vsnprintf(buf, sizeof(buf), format, ap);
    vsprintf(buf, format, ap);
	va_end(ap);
    }

    //fprintf(log, "%s", buf);
    fprintf(log, buf);
    fflush(log);
}

static void
server_log_open(LOG_TYPE_t type)
{
    switch (type)
    {
	case ACCESS_LOG:
	    if ((server->access_log = fopen(server->config.accesslog, "a")) == NULL)
		return;
	    break;

	case ERROR_LOG:
	    if ((server->error_log = fopen(server->config.errorlog, "a")) == NULL)
		return;
	    break;

	default:
	    return;
    }
}

#if 0
static void
server_log_close(LOG_TYPE_t type)
{
    switch (type)
    {
	case ACCESS_LOG:
	    fclose(server->access_log);
	    break;

	case ERROR_LOG:
	    fclose(server->error_log);
	    break;

	default:
	    return;
    }
}
#endif

void
server_log_init(void)
{
    server_log_open(ACCESS_LOG);
    server_log_open(ERROR_LOG);

    server->log = serverlog;

    if (server->log == NULL)
	error_exit("server->log == NULL");
}

static inline int
get_IP(struct sockaddr *sa, socklen_t salen, char * host, size_t hostlen)
{
    return getnameinfo(sa, salen, host, hostlen,
	    NULL, 0, NI_NUMERICHOST | NI_NUMERICSERV);
}

static inline char    *
log_time(char *datemsg, size_t size)
{
#ifndef	USE_ALARM_TIME
    const time_t	now = time(NULL);

    if (strftime(datemsg, size, "%d/%b/%Y %T %z", localtime(&now)) == 0)
	*datemsg = '\0';
#else
    if (strftime(datemsg, size, "%d/%b/%Y %T %z", localtime(&server->now)) == 0)
	*datemsg = '\0';
#endif

    return datemsg;
}

void
log_request(CONN_t *conn)
{
#ifdef  IPV6_HTTPD
    char	    address[INET6_ADDRSTRLEN];
#else
    char	    address[INET_ADDRSTRLEN];
#endif
    char	    datemsg[30];
    int		    ret;

    if (conn->status.st == HTTP_STATUS_400)
	return;

    if ((ret = get_IP((struct sockaddr *)&conn->cin, server->salen, address, sizeof(address))) != 0)
    {
	*address = '\0';
#if 0
	fprintf(stderr, "getnameinfo error: %s\n", gai_strerror(ret));
#endif
    }

    if (conn->request.uri.query)
	server->log(ACCESS_LOG, "%s %s - [%s] \"%s %s?%s %s\" %d %d \"%s\"\n",
		address, conn->request.uri.authority,
		log_time(datemsg, sizeof(datemsg)),
		http_method_str(conn),
		conn->request.uri.path_raw, conn->request.uri.query,
		http_version(conn),
		conn->status.st, conn->response.content_length,
		conn->request.user_agent);
    else
	server->log(ACCESS_LOG, "%s %s - [%s] \"%s %s %s\" %d %d \"%s\"\n",
		address, conn->request.uri.authority,
		log_time(datemsg, sizeof(datemsg)),
		http_method_str(conn),
		conn->request.uri.path_raw,
		http_version(conn),
		conn->status.st, conn->response.content_length,
		conn->request.user_agent);
}
