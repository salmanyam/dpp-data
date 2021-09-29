/* $Id: http_version.c 111 2007-06-09 13:44:07Z byshen $ */

#include "orzhttpd.h"

static const char * version_tab[] = {
    "HTTP/1.0", "HTTP/1.1"
};

const char *
http_version(CONN_t *conn)
{
    switch (conn->request.version)
    {
	case HTTP_VERSION_1_1:
	    return version_tab[1];

	case HTTP_VERSION_1_0:
	default:
	    return version_tab[0];
    }
}

