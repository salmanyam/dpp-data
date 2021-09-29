/* $Id: dirlist.c 137 2007-06-15 08:11:30Z byshen $ */

#include "orzhttpd.h"


static DYNAMIC_BUFFER_t listbuf;

#define LIST_BUF_APPEND_CONST(conn, str)        \
        dynamic_buffer_append(conn, &listbuf, str)


static char    *
dirlist_time(char *datemsg, size_t size, time_t * clock)
{
    if (strftime(datemsg, size, "%Y-%b-%d %T", localtime(clock)) == 0)
	*datemsg = '\0';
    return datemsg;
}

static void
dirlist_sizefmt(float *size, char *unit)
{
    const char fmt[] = "KMGTPE";   /* Kilo, Mega, Giga, Tera, Peta, Exa */
    int		    u = 1;

    *size /= 1024;

    for (; *size > 1024 && fmt[u]; u++)
    {
	*size /= 1024;
    }

    *unit = fmt[u - 1];
}

static inline void
dirlist_body(CONN_t *conn, DIR *dir, const char *fpath)
{
    const struct dirent   *dirp;
    struct stat	    *st;
    char	    response[BUFSIZE], datemsg[30];
    float	    filesize;
    char	    unit;

    LIST_BUF_APPEND_CONST(conn,
	    "<table><tr><td><b>Name</b></td>"
	    "<td><b>Last Modified</b></td>"
	    "<td align=\"right\"><b>Size</b></td>"
	    "<td><b>Type</b></td></tr>");

    LIST_BUF_APPEND_CONST(conn,
	    "<tr class=\"cd\" onMouseover='this.className=\"cd_hover\";' "
	    "onMouseout='this.className=\"cd\";'><td>"
	    "<a href=\"../\">Parent Directory/</a>"
	    "</td><td></td><td align=\"center\">-</td><td>Directory</td></tr>");

    while ((dirp = readdir(dir)) != NULL)
    {
	if (strcmp(dirp->d_name, ".") == 0 ||
		strcmp(dirp->d_name, "..") == 0)
	    continue;

	LIST_BUF_APPEND_CONST(conn,
		"<tr class=\"cd\" onMouseover='this.className=\"cd_hover\";' "
		"onMouseout='this.className=\"cd\";'>");

	snprintf(response, sizeof(response), "%s/%s", fpath, dirp->d_name);

	/* get file size & last modified */
	st = stat_cache_find(response);

	if (S_ISDIR(st->st_mode))   /* is directory? */
	{
	    snprintf(response, sizeof(response),
		    "<td><a href=\"%s/\">%s/</a></td>"
		    "<td>%s</td><td align=\"center\">-</td><td>%s</td></tr>",
		    dirp->d_name, dirp->d_name,
		    dirlist_time(datemsg, sizeof(datemsg), &st->st_mtime),
		    "Directory");
	}
	else
	{
	    filesize = (float)st->st_size;
	    dirlist_sizefmt(&filesize, &unit);

	    snprintf(response, sizeof(response),
		    "<td><a href=\"%s\">%s</a></td>"
		    "<td>%s</td><td align=\"right\">%2.1f%c</td><td>%s</td></tr>",
		    dirp->d_name, dirp->d_name,
		    dirlist_time(datemsg, sizeof(datemsg), &st->st_mtime),
		    filesize, unit, get_MIME(response));
	}
	dynamic_buffer_append(conn, &listbuf, response);
    }
    LIST_BUF_APPEND_CONST(conn, "</table>");
}

inline HTTP_STATE_t
dirlist(CONN_t *conn, const char *fpath, const char *path)
{
    char	response[BUFSIZE], *tmp;
    DIR	       *dir;

    if ((tmp = strrchr(fpath, '/')) != NULL)
	*tmp = '\0';

    if ((dir = opendir(fpath)) == NULL)
    {
	conn->status.st = HTTP_STATUS_403;
	return HTTP_STATE_ERROR;
    }

    /* HTML Header */
    dynamic_buffer_init(&listbuf);

    snprintf(response, sizeof(response),
	    "<html><title>Index of %s</title>", conn->request.uri.path_raw);
    dynamic_buffer_append(conn, &listbuf, response);

    /* CSS */
    LIST_BUF_APPEND_CONST(conn,
	    "<style type=\"text/css\">"
	    "table { border-style: groove; border-width: 2px; }"
	    "tr.cd { background-color: #EEE; }"
	    "tr.cd_hover { background-color: #CCC; }"
	    "td { font-family: \"Courier New\", Courier, monospace;"
	    "font-size: 10pt; padding-left: 10px;  padding-right: 10px; }"
	    "a:link { color: black; text-decoration: none; }"
	    "a:visited { color: black; text-decoration: none; }"
	    "a:hover { color: black; text-decoration: underline; }"
	    "a:active { color: black; text-decoration: underline; }"
	    "</style>");

    /* HTML Body */
    snprintf(response, sizeof(response),
	    "</head><body><h2>Index of %s</h2><hr />",
	    conn->request.uri.path_raw);
    dynamic_buffer_append(conn, &listbuf, response);

    /* Directory List */
    dirlist_body(conn, dir, fpath);
    closedir(dir);

    /* End of HTML */
    snprintf(response, sizeof(response),
	    "<hr /><i>%s</i></body></html>\r\n",
	    SERVER_VERSION);
    dynamic_buffer_append(conn, &listbuf, response);

    /* output response header */
    conn->response.content_length = listbuf.used;
    conn->response.content_type = "text/html";

    http_response_status(conn);
    http_response_header(conn);

    static_buffer_write(conn, &conn->write_buf);

    /* output directory list */
    if (conn->request.method == HTTP_METHOD_GET)
	dynamic_buffer_write(conn, &listbuf);

    dynamic_buffer_free(&listbuf);

    return HTTP_STATE_FINISH;
}

