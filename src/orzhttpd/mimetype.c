/* $Id: mimetype.c 122 2007-06-10 11:12:21Z byshen $ */

#include "orzhttpd.h"

typedef struct {
	const char *extension;
	const char *mimetype;
} MIME_t;

/* NB: the following table must be sorted lexically. */
static const MIME_t mime_tab[] = {
	{".asc",	"text/plain"},
	{".asf",	"video/x-ms-asf"},
	{".asx",	"video/x-ms-asf"},
	{".avi",	"video/x-msvideo"},
	{".bz2",	"application/x-bzip"},
	{".c",		"text/plain"},
	{".class",	"application/octet-stream"},
	{".conf",	"text/plain"},
	{".cpp",	"text/plain"},
	{".css",	"text/css"},
	{".dtd",	"text/xml"},
	{".dvi",	"application/x-dvi"},
	{".gif",	"image/gif"},
	{".gz",		"application/x-gzip"},
	{".h",		"text/plain"},
	{".htm",	"text/html"},
	{".html",	"text/html"},
	{".jpeg",	"image/jpeg"},
	{".jpg",	"image/jpeg"},
	{".js",		"text/javascript"},
	{".log",	"text/plain"},
	{".m3u",	"audio/x-mpegurl"},
	{".mov",	"video/quicktime"},
	{".mp3",	"audio/mpeg"},
	{".mpeg",	"video/mpeg"},
	{".mpg",	"video/mpeg"},
	{".ogg",	"application/ogg"},
	{".pac",	"application/x-ns-proxy-autoconfig"},
	{".pdf",	"application/pdf"},
	{".png",	"image/png"},
	{".ps",		"application/postscript"},
	{".qt",		"video/quicktime"},
	{".s",		"text/plain"},
	{".sig",	"application/pgp-signature"},
	{".spl",	"application/futuresplash"},
	{".swf",	"application/x-shockwave-flash"},
	{".tar",	"application/x-tar"},
	{".tar.bz2",	"application/x-bzip-compressed-tar"},
	{".tar.gz",	"application/x-tgz"},
	{".tbz",	"application/x-bzip-compressed-tar"},
	{".text",	"text/plain"},
	{".tgz",	"application/x-tgz"},
	{".torrent",	"application/x-bittorrent"},
	{".txt",	"text/plain"},
	{".wav",	"audio/x-wav"},
	{".wax",	"audio/x-ms-wax"},
	{".wma",	"audio/x-ms-wma"},
	{".wmv",	"video/x-ms-wmv"},
	{".xbm",	"image/x-xbitmap"},
	{".xml",	"text/xml"},
	{".xpm",	"image/x-xpixmap"},
	{".xwd",	"image/x-xwindowdump"},
	{".zip",	"application/zip"}
};

static const char mime_default[] = "application/octet-stream";

static int
mimecmp(const void *a, const void *b)
{
    return (strcasecmp(((const MIME_t *)a)->extension, ((const MIME_t *)b)->extension));
}

const char *
get_MIME(const char *fpath)
{
    MIME_t tmp, *mime;
    char *ext;

    if (fpath && (ext = strrchr(basename((char *)fpath), '.')) != NULL)
    {
	tmp.extension = ext;
	if ((mime = bsearch(&tmp, mime_tab,
			sizeof(mime_tab)/sizeof(MIME_t),
			sizeof(MIME_t), mimecmp)) != NULL)
	    return mime->mimetype;
    }
    return mime_default;
}
