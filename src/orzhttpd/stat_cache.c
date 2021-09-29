/* $Id: stat_cache.c 131 2007-06-13 17:42:13Z byshen $ */

#include "orzhttpd.h"


#define	DEFAULT_CACHE_SIZE	1024
#define	CACHE_TIMEOUT		10

#if 0
#define	STAT_CACHE_DEBUG
#endif

static time_t expire_time;

typedef struct cache {
    struct stat st;
    unsigned int hash_key;
    time_t cache_time;
#ifdef	STAT_CACHE_DEBUG
    char *path;
#endif
    TAILQ_ENTRY(cache) next;
    SPLAY_ENTRY(cache) child;
} CACHE_t;

static TAILQ_HEAD(free_cache, cache) free_head;	    /* pre-allocated stat cache list */
static SPLAY_HEAD(stat_cache, cache) tree_root;	    /* splay tree is used to cache stat */

static unsigned int
DJBHash(char *str)
{
   unsigned int hash = 5381;

   for (; *str; str++)
      hash = ((hash << 5) + hash) + (*str);

   return (hash & ~(1 << 31));
}

static int
stat_cache_cmp(CACHE_t *a, CACHE_t *b)
{
    return (a->hash_key - b->hash_key);
}

SPLAY_PROTOTYPE(stat_cache, cache, child, stat_cache_cmp);
SPLAY_GENERATE(stat_cache, cache, child, stat_cache_cmp);

static void
stat_cache_realloc(void)
{
    CACHE_t	       *cache;
    register int	i;

    cache = (CACHE_t *)calloc(sizeof(CACHE_t), DEFAULT_CACHE_SIZE);

    for (i = 0; i < DEFAULT_CACHE_SIZE; i++)
	TAILQ_INSERT_HEAD(&free_head, &cache[i], next);
}

static void
stat_cache_free(CACHE_t *cache)
{
#ifdef	STAT_CACHE_DEBUG
    free(cache->path);
#endif
    TAILQ_INSERT_HEAD(&free_head, cache, next);
}

static void
stat_cache_garbage_collection(time_t timeout)
{
    CACHE_t	   *n, *tmp;

    for (n = SPLAY_MIN(stat_cache, &tree_root); n != NULL; n = tmp)
    {
	tmp = SPLAY_NEXT(stat_cache, &tree_root, n);

	if (server->now - n->cache_time > timeout)
	{
#ifdef	STAT_CACHE_DEBUG
	    fprintf(stderr, "cache remove: %s\n", n->path);
#endif
	    SPLAY_REMOVE(stat_cache, &tree_root, n);
	    stat_cache_free(n);
	}
    }
}

static CACHE_t *
stat_cache_alloc(void)
{
    CACHE_t	       *cache;

    if (TAILQ_EMPTY(&free_head))
	stat_cache_realloc();

    if ((cache = TAILQ_FIRST(&free_head)) == NULL)
	return NULL;

    TAILQ_REMOVE(&free_head, cache, next);

    return cache;
}

struct stat *
stat_cache_find(const char *path)
{
    CACHE_t	   *n, find;
    struct stat	    st;

    if (server->now > expire_time)
    {
	expire_time = server->now + CACHE_TIMEOUT;

	stat_cache_garbage_collection(CACHE_TIMEOUT);
    }

    find.hash_key = DJBHash((char *)path);

    if ((n = SPLAY_FIND(stat_cache, &tree_root, &find)) != NULL)
    {
#ifdef	STAT_CACHE_DEBUG
	fprintf(stderr, "cache hit: %s (%u)\n", path, find.hash_key);
#endif
	n->cache_time = server->now;    /* refresh cache time */
	return &n->st;
    }

    if (stat(path, &st) == -1)
	return NULL;

    n = stat_cache_alloc();

#ifdef	STAT_CACHE_DEBUG
    fprintf(stderr, "cache miss: %s (%u)\n", path, find.hash_key);

    n->path = strdup(path);
#endif
    n->hash_key = find.hash_key;
    n->cache_time = server->now;
    n->st = st;

    SPLAY_INSERT(stat_cache, &tree_root, n);

    return &n->st;
}

void
stat_cache_init(void)
{
    TAILQ_INIT(&free_head);
    SPLAY_INIT(&tree_root);

    stat_cache_realloc();
}

