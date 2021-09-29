/* $Id: method.c 120 2007-06-10 06:04:06Z byshen $ */

#include "orzhttpd.h"


static void
mthd_get(CONN_t *conn, const char *path)
{
    return;
}

static void
mthd_head(CONN_t *conn, const char *path)
{
    return;
}

/* NB: the following table must be sorted lexically. */
static const HANDLER_t method_tab[] = {
    {"CONNECT",		NULL},
    {"DELETE",		NULL},
    {"GET",		mthd_get},
    {"HEAD",		mthd_head},
    {"OPTIONS",		NULL},
    {"POST",		NULL},
    {"PUT",		NULL},
    {"TRACE",		NULL}
};

const char *
http_method_str(CONN_t *conn)
{
    return method_tab[conn->request.method].key;
}

int
http_method(CONN_t *conn, const char *method)
{
    HANDLER_t	    tmp, *entry;

    tmp.key = method;
    if ((entry = bsearch(&tmp, method_tab,
		    sizeof(method_tab)/sizeof(HANDLER_t),
		    sizeof(HANDLER_t), handlercmp)) != NULL)
	if (entry->handler)
	{
	    conn->request.method = entry - method_tab;	    /* offset of method_tab[] */
	    entry->handler(conn, conn->request.uri.path);
	    return 0;
	}

    return -1;
}

