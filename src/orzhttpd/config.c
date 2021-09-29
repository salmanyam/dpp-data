/* $Id: config.c 139 2007-06-15 20:29:54Z byshen $ */

#include "orzhttpd.h"

#include <expat.h>


typedef void (*handler_t)(CONFIG_t *, const char *);

typedef struct {
    const char *name;
    handler_t handler;
} XML_HANDLER_t;

static XML_Parser parser;
static handler_t callback;

static void
item_user(CONFIG_t *config, const char *arg)
{
    config->user = strdup(arg);
}

static void
item_port(CONFIG_t *config, const char *arg)
{
    config->port = (uint16_t)strtol(arg, (char **)NULL, 10);
}

static void
item_host(CONFIG_t *config, const char *arg)
{
    config->host = strdup(arg);
}

static void
item_doc_root(CONFIG_t *config, const char *arg)
{
    config->basedir = strdup(arg);
}

static void
item_vir_host_root(CONFIG_t *config, const char *arg)
{
    config->vhostbase = strdup(arg);
}

static void
item_err_msg_path(CONFIG_t *config, const char *arg)
{
    config->errmsgpath = strdup(arg);
}

static void
item_index_file(CONFIG_t *config, const char *arg)
{
    config->indexfile = strdup(arg);
}

static void
item_user_dir(CONFIG_t *config, const char *arg)
{
    config->userdir = strdup(arg);
}

static void
item_access_log(CONFIG_t *config, const char *arg)
{
    config->accesslog = strdup(arg);
}

static void
item_error_log(CONFIG_t *config, const char *arg)
{
    config->errorlog = strdup(arg);
}

static void
item_passfile(CONFIG_t *config, const char *arg)
{
    config->passfile = strdup(arg);
}

static const XML_HANDLER_t item_tab[] = {
    {"User",			item_user},
    {"Port",			item_port},
    {"Host",			item_host},
    {"Document Root",		item_doc_root},
    {"Virtual Host Root",	item_vir_host_root},
    {"Error Messages",		item_err_msg_path},
    {"Index File",		item_index_file},
    {"User Directory",		item_user_dir},
    {"Access Log",		item_access_log},
    {"Error Log",		item_error_log},
    {"Password File",		item_passfile},
    {NULL,			NULL}
};

static void
opt_hadler(CONFIG_t *config, const int option, const char *flag)
{
    if (strcasecmp(flag, "on") == 0)
	SET_OP(option);
}

static void
opt_user_dir(CONFIG_t *config, const char *arg)
{
    opt_hadler(config, OP_USER_HOME_DIR, arg);

    if (HAS_OP(OP_USER_HOME_DIR) && HAS_OP(OP_CHROOT))
	error_exit("conflict");
}

static void
opt_dir_list(CONFIG_t *config, const char *arg)
{
    opt_hadler(config, OP_DIR_LISTING, arg);
}

static void
opt_logging(CONFIG_t *config, const char *arg)
{
    opt_hadler(config, OP_LOGGING, arg);
}

static void
opt_custom_errlog(CONFIG_t *config, const char *arg)
{
    opt_hadler(config, OP_CUSTOM_ERRMSG, arg);
}

static void
opt_virtual_host(CONFIG_t *config, const char *arg)
{
    opt_hadler(config, OP_VIRTUAL_HOST, arg);
}

static void
opt_chroot(CONFIG_t *config, const char *arg)
{
    opt_hadler(config, OP_CHROOT, arg);

    if (HAS_OP(OP_USER_HOME_DIR) && HAS_OP(OP_CHROOT))
	error_exit("conflict");
}


static const XML_HANDLER_t opt_tab[] = {
    {"User Home Directories",	opt_user_dir},
    {"Directory Listing",	opt_dir_list},
    {"Logging",			opt_logging},
    {"Custom Error Messages",	opt_custom_errlog},
    {"Virtual Hosts",		opt_virtual_host},
    {"Chroot",			opt_chroot},
    {NULL,			NULL}
};

static void
xml_handler(const XML_HANDLER_t *table, const XML_Char **atts)
{
    register int    i = 0, j = 0;
    const XML_HANDLER_t   *handler;

    while (atts[i])
    {
	if (strcasecmp(atts[i++], "name") == 0)
	    break;
    }

    for (handler = &table[j]; handler->name; handler = &table[++j])
    {
	if (strcasecmp(atts[i], handler->name) == 0)
	    break;
    }
    callback = handler->handler;
}

static void XMLCALL
start_checker(void *userData, const XML_Char *name, const XML_Char **atts)
{
    if (strcasecmp(name, "Item") == 0)
	xml_handler(item_tab, atts);
    else if (strcasecmp(name, "Option") == 0)
	xml_handler(opt_tab, atts);
    else
	callback = NULL;
}

static void XMLCALL
end_checker(void *userData, const XML_Char *name)
{
}

static void XMLCALL
accumulate_characters(void *userData, const XML_Char *s, int len)
{
    char buf[BUFSIZE];

    CONFIG_t *config = (CONFIG_t *) userData;

    for (;;)
    {
	switch (*s)
	{
	    case ' ':
	    case '\t':
	    case '\r':
	    case '\n':
		return;

	    default:
		bzero(buf, sizeof(buf));
		memcpy(buf, s, len);

		if (callback) (callback)(config, buf);

		return;
	}
    }
}

void
read_xml_config(void)
{
    char           *src;
    int		    fd;
    struct stat	    st;

    if ((fd = open(server->configfile, O_RDONLY)) < 0)
	error_exit("open configuration file error");

    if (fstat(fd, &st) == -1)
	error_exit("fstat error");

    if ((src = mmap(0, st.st_size, PROT_READ,
                    MAP_SHARED, fd, 0)) == (char *)-1)
	error_exit("mmap error");

    if ((parser = XML_ParserCreate(NULL)) == NULL)
	error_exit("XML parser create error");

    XML_SetUserData(parser, &server->config);
    XML_SetElementHandler(parser, start_checker, end_checker);
    XML_SetCharacterDataHandler(parser, accumulate_characters);

    if (XML_Parse(parser, src, strlen(src), XML_TRUE) == XML_STATUS_ERROR)
	error_exit("XML parse error");

    munmap(src, st.st_size);
    close(fd);
}

