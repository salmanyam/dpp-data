#ifndef SYSCALL_H_
#define SYSCALL_H_

#include "syscall.h"

int transmit(int fd, const void *buf, size_t count, size_t *tx_bytes)
{
    return 0;
}

int receive(int fd, void *buf, size_t count, size_t *rx_bytes)
{
    return 0;
}

int allocate(size_t length, int is_X, void **addr)
{
    return 0;
}

int deallocate(void *addr, size_t length)
{
    return 0;
}

int random(void *buf, size_t count, size_t *rnd_bytes)
{
    return 0;
}

void _terminate(int status) {

}

#endif
