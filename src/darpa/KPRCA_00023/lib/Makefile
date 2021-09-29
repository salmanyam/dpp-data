CC=wllvm
CFLAGS= -Wall -g -O -fPIC
DEPS = libcgc.h ctype.h malloc.h mymath.h stdarg.h stddef.h stdint.h stdlib.h string.h

SOURCES := $(wildcard *.c) 
OBJECTS := $(patsubst %.c, %.o, $(SOURCES))

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

libcgc.so: $(OBJECTS)
	$(CC) -shared -o $@ $^ $(CFLAGS)

.PHONY: clean

clean:
	rm -f *.o
