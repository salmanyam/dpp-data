/* $Id: buffer.c 110 2007-06-09 12:47:19Z byshen $ */

#include "orzhttpd.h"

void
static_buffer_init(STATIC_BUFFER_t *buffer)
{
    buffer->buf[0] = '\0';
    buffer->used = 0;
}

inline int
static_buffer_read(CONN_t *conn, STATIC_BUFFER_t *buffer)
{
    return read(conn->fd, &buffer->buf[buffer->used], BUFSIZE - buffer->used);
}

void
static_buffer_write(CONN_t *conn, STATIC_BUFFER_t *buffer)
{
    if (buffer->used != 0)
    {
	write(conn->fd, buffer->buf, buffer->used);

	static_buffer_init(buffer);
    }
}

void
static_buffer_append(CONN_t *conn, STATIC_BUFFER_t *buffer, char *str)
{
    size_t len = strlen(str);

    if (len + 1 > BUFSIZE - buffer->used)
    {
	static_buffer_write(conn, buffer);
    }

    if (len + 1 > BUFSIZE - buffer->used)
	return;

    (void)strncat(buffer->buf, str, BUFSIZE - buffer->used - 1);

    buffer->used += len;
}

void
dynamic_buffer_init(DYNAMIC_BUFFER_t *buffer)
{
    if (buffer->buf == NULL)
    {
	buffer->size = BUFSIZE;
	buffer->buf = (char *)malloc(buffer->size);
    }

    buffer->used = 0;
}

void
dynamic_buffer_free(DYNAMIC_BUFFER_t *buffer)
{
    free(buffer->buf);
    buffer->buf = NULL;
}

int
dynamic_buffer_read(CONN_t *conn, DYNAMIC_BUFFER_t *buffer)
{
    return read(conn->fd, &buffer->buf[buffer->used], buffer->size - buffer->used);
}

void
dynamic_buffer_write(CONN_t *conn, DYNAMIC_BUFFER_t *buffer)
{
    if (buffer->used != 0)
    {
	write(conn->fd, buffer->buf, buffer->used);

	dynamic_buffer_init(buffer);
    }
}

void
dynamic_buffer_append(CONN_t *conn, DYNAMIC_BUFFER_t *buffer, char *str)
{
    size_t len = strlen(str);

    if (buffer->buf == NULL || str == NULL)
	return;

    if (len + 1 > buffer->size - buffer->used)
    {
	buffer->size += BUFSIZE;

	buffer->buf = (char *)realloc(buffer->buf, buffer->size);
    }

    if (len + 1 > buffer->size - buffer->used)
	return;

    if (buffer->used == 0)
	buffer->used++;

    memcpy(buffer->buf + buffer->used - 1, str, len + 1);

    buffer->used += len;
}

