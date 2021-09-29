#ifndef CTYPE_H_
#define CTYPE_H_

#include "stddef.h"

int transmit(int fd, const void *buf, size_t count, size_t *tx_bytes);
int receive(int fd, void *buf, size_t count, size_t *rx_bytes);
int allocate(size_t length, int is_X, void **addr);
int deallocate(void *addr, size_t length);
int random(void *buf, size_t count, size_t *rnd_bytes);
void _terminate(int status);

#endif
