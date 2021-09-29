CC=wllvm
CFLAGS= -Wall -g -O -fPIC
DEPS = libcgc.h libc.h

SOURCES := $(wildcard *.c) 
OBJECTS := $(patsubst %.c, %.o, $(SOURCES))

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

libcgc.so: $(OBJECTS)
	$(CC) -shared -o $@ $^ $(CFLAGS)

.PHONY: clean

clean:
	rm -f *.o
