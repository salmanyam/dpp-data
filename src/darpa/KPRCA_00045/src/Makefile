CC=wllvm
CFLAGS= -Wall -g -O1
DEPS = libcgc.h ctype.h dict.h malloc.h readuntil.h sadface.h stack.h stdarg.h stddef.h stdint.h stdlib.h string.h strtof.h

SOURCES := $(wildcard *.c) 
OBJECTS := $(patsubst %.c, %.o, $(SOURCES))

%.o: %.c $(DEPS)
	$(CC) -O1 -c -o $@ $< $(CFLAGS)

main: $(OBJECTS)
	$(CC) -O1 -o $@ $^ $(CFLAGS) -L. -l:libcgc.so

.PHONY: clean

clean:
	rm -f *.o
