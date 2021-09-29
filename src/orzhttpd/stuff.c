/* $Id: stuff.c 126 2007-06-10 19:51:07Z byshen $ */

#include "orzhttpd.h"

int
is_dir(const char *fname)
{
    struct stat *st = stat_cache_find(fname);

    return (st != NULL && S_ISDIR(st->st_mode));
}

int
is_regular_file(const char *fname)
{
    struct stat *st = stat_cache_find(fname);

    return (st != NULL && S_ISREG(st->st_mode));
}

int
handlercmp(const void *a, const void *b)
{
    return (strcmp(((const HANDLER_t *)a)->key, ((const HANDLER_t *)b)->key));
}

void
error_exit(const char *msg)
{
    if (errno)
	fprintf(stderr, "ERROR: %s\n", strerror(errno));

    fprintf(stderr, "=> %s\n", msg);
    exit(1);
}

#ifdef	HTTPD_FORK
void
keeptime(const long sec)
{
    struct itimerval timer;

    bzero(&timer, sizeof(struct itimerval));
    timer.it_value.tv_sec = sec;

    setitimer(ITIMER_REAL, &timer, NULL);
}
#endif

