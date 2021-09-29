/* $Id: main.c 137 2007-06-15 08:11:30Z byshen $ */

#include <sysexits.h>

#include "orzhttpd.h"


SERVER_t *server;

static void
usage(void)
{
    (void) fprintf(stderr, "%s - %s\n%s", SERVER_VERSION,
	    "a small and high performance HTTP server", "usage:\n\
  -j <num>   set number of processes\n\
  -f <file>  set configuration file\n\
  -D         don't go to background\n\
  -v         show version\n\
  -h         show this help\n\
");
    exit(EX_USAGE);
}

static inline void
server_init(void)
{
    struct utsname  un;

    if ((server = (SERVER_t *)malloc(sizeof(SERVER_t))) == NULL)
	error_exit("malloc error");

    bzero(server, sizeof(SERVER_t));

    uname(&un);
    strncpy(server->sysname, un.sysname, sizeof(server->sysname));

    server->configfile = "config.xml";
    server->proc_num = 1;

    server_write_init();
    stat_cache_init();
}

int
main(int argc, char *argv[])
{
    char ch;

    server_init();

    while ((ch = getopt(argc, argv, "j:f:Dvh")) != -1)
    {
	switch (ch)
	{
	    case 'j':
		server->proc_num = (unsigned int)strtol(optarg, (char **)NULL, 10);
		break;

	    case 'f':
		server->configfile = optarg;
		break;

	    case 'D':
		SET_OP(OP_DEBUG_MODE);
		break;

	    case 'v':
		fprintf(stdout, "%s\n", SERVER_VERSION);
		exit(0);

	    case 'h':
	    default:
		usage();
		break;
	}
    }

    /* read configuration file */
    read_xml_config();

    /* start HTTP server */
    start_httpd();

    return 0;
}

