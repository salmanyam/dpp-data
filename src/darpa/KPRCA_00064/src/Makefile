CC=wllvm
CFLAGS= -Wall -g -O1
DEPS = libcgc.h stddef.h math.h ctype.h stdio.h stdarg.h stdint.h stdlib.h string.h stdio_private.h malloc_private.h

SOURCES := $(wildcard *.c) 
OBJECTS := $(patsubst %.c, %.o, $(SOURCES))

%.o: %.c $(DEPS)
	$(CC) -O1 -c -o $@ $< $(CFLAGS)

main: $(OBJECTS)
	$(CC) -O1 -o $@ $^ $(CFLAGS) -L. -l:libcgc.so

.PHONY: clean

clean:
	rm -f *.o
