/* $Id: auth.c 140 2008-12-09 13:26:55Z byshen $ */

#include "orzhttpd.h"
#include <openssl/md5.h>

/* HTTP Digest Authentication */

static void
md5(char *buf, ...)
{
    const char hex[] = "0123456789abcdef";
    unsigned char digest[16];
    MD5_CTX ctx;
    va_list ap;
    char *str;
    register int i;

    MD5_Init(&ctx);

    va_start(ap, buf);

    if ((str = va_arg(ap, char *)) != NULL)
	MD5_Update(&ctx, str, strlen(str));

    while ((str = va_arg(ap, char *)) != NULL)
    {
	MD5_Update(&ctx, ":", strlen(":"));
	MD5_Update(&ctx, str, strlen(str));
    }

    va_end(ap);

    MD5_Final(digest, &ctx);

    for (i = 0; i < 16; i++)
    {
        *buf++ = *(hex + (digest[i] >> 4));
        *buf++ = *(hex + (digest[i] & 0xf));
    }
#if 0
    *buf = '\0';
#endif
}

static void
str_strip(char *str)
{
    for (; *str; str++)
    {
	if (*str == '"' || *str == ',' || *str == ' ')
	{
	    *str = '\0';
	    break;
	}
    }
}

static void
parse_authorization_header(CONN_t *conn)
{
    char *auth = (char *)conn->request.authorization;

    conn->request.auth.username = strstr(auth, "username=") + sizeof("username=")-1;
    if (conn->request.auth.username && *conn->request.auth.username == '"')
	conn->request.auth.username++;

    conn->request.auth.uri = strstr(auth, "uri=") + sizeof("uri=")-1;
    if (conn->request.auth.uri && *conn->request.auth.uri == '"')
	conn->request.auth.uri++;

    conn->request.auth.nonce = strstr(auth, "nonce=") + sizeof("nonce=")-1;
    if (conn->request.auth.nonce && *conn->request.auth.nonce == '"')
	conn->request.auth.nonce++;

    conn->request.auth.nc = strstr(auth, "nc=") + sizeof("nc=")-1;
    if (conn->request.auth.nc && *conn->request.auth.nc == '"')
	conn->request.auth.nc++;

    conn->request.auth.cnonce = strstr(auth, "cnonce=") + sizeof("cnonce=")-1;
    if (conn->request.auth.cnonce && *conn->request.auth.cnonce == '"')
	conn->request.auth.cnonce++;

    conn->request.auth.qop = strstr(auth, "qop=") + sizeof("qop=")-1;
    if (conn->request.auth.qop && *conn->request.auth.qop == '"')
	conn->request.auth.qop++;

    conn->request.auth.response = strstr(auth, "response=") + sizeof("response=")-1;
    if (conn->request.auth.response && *conn->request.auth.response == '"')
	conn->request.auth.response++;

    str_strip((char *)conn->request.auth.username);
    str_strip((char *)conn->request.auth.uri);
    str_strip((char *)conn->request.auth.nonce);
    str_strip((char *)conn->request.auth.nc);
    str_strip((char *)conn->request.auth.cnonce);
    str_strip((char *)conn->request.auth.qop);
    str_strip((char *)conn->request.auth.response);
}

static int
http_auth_check_passwd(CONN_t *conn)
{
#if 0
    char A1[33], A2[33], result[33];
#else
    char A1[32], A2[32], result[32];
#endif

    if (conn->request.authorization == NULL)
	return -1;

    parse_authorization_header(conn);

    md5(A1, conn->request.auth.username, "OrzHTTPd", "123", NULL);
    md5(A2, http_method_str(conn), conn->request.auth.uri, NULL);
    md5(result, A1, conn->request.auth.nonce, conn->request.auth.nc,
	    conn->request.auth.cnonce, conn->request.auth.qop, A2, NULL);

#if 0
    fprintf(stderr, "%s\n", conn->request.auth.username);
    fprintf(stderr, "%s\n", conn->request.auth.uri);
    fprintf(stderr, "%s\n", conn->request.auth.nonce);
    fprintf(stderr, "%s\n", conn->request.auth.nc);
    fprintf(stderr, "%s\n", conn->request.auth.cnonce);
    fprintf(stderr, "%s\n", conn->request.auth.qop);
    fprintf(stderr, "\n%s\n%s\n", result, conn->request.auth.response);
#endif

    return memcmp(result, conn->request.auth.response, sizeof(result));
}

int
http_authorization(CONN_t *conn)
{
    /* TODO */

    return 0;
}

