CC=wllvm
CFLAGS= -Wall -g -O1
DEPS = libcgc.h ctype.h malloc_private.h math.h stdarg.h stdint.h stdio.h stdio_private.h stdlib.h string.h

SOURCES := $(wildcard *.c) 
OBJECTS := $(patsubst %.c, %.o, $(SOURCES))

%.o: %.c $(DEPS)
	$(CC) -O1 -c -o $@ $< $(CFLAGS)

main: $(OBJECTS)
	$(CC) -O1 -o $@ $^ $(CFLAGS) -L. -l:libcgc.so

.PHONY: clean

clean:
	rm -f *.o
