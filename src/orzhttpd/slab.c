/* $Id: slab.c 87 2007-06-06 07:08:13Z byshen $ */

#include "orzhttpd.h"

/* a slab based allocator for connection objects */

#ifdef	SLAB_ALLOCATOR

#define	DEFAULT_CACHE_SIZE	32

typedef struct slab {
    CONN_t object;	/* NB: object MUST be the first member of this structure */
    TAILQ_ENTRY(slab) next;
} SLAB_t;


static TAILQ_HEAD(cache, slab) head = TAILQ_HEAD_INITIALIZER(head);


static void
cache_realloc(void)
{
    SLAB_t	       *slab;
    register int	i;

#ifdef	HTTPD_DEBUG
    fprintf(stderr, "cache_realloc()\n");
#endif

    slab = (SLAB_t *)calloc(sizeof(SLAB_t), DEFAULT_CACHE_SIZE);

    for (i = 0; i < DEFAULT_CACHE_SIZE; i++)
	TAILQ_INSERT_HEAD(&head, &slab[i], next);
}

void
cache_init(void)
{
    TAILQ_INIT(&head);

    cache_realloc();
}

CONN_t *
cache_alloc(void)
{
    SLAB_t	       *slab;

    if (TAILQ_EMPTY(&head))
	cache_realloc();

    if ((slab = TAILQ_FIRST(&head)) == NULL)
	return NULL;

    TAILQ_REMOVE(&head, slab, next);

    return &slab->object;
}

void
cache_free(CONN_t *object)
{
    SLAB_t	       *slab = (SLAB_t *)object;

    TAILQ_INSERT_HEAD(&head, slab, next);
}
#endif

