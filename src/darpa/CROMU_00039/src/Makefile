CC=wllvm
CFLAGS= -Wall -g -O1
DEPS = libcgc.h malloc.h mymath.h packet.h prng.h service.h stdarg.h stdint.h stdlib.h vars.h

SOURCES := $(wildcard *.c) 
OBJECTS := $(patsubst %.c, %.o, $(SOURCES))

%.o: %.c $(DEPS)
	$(CC) -O1 -c -o $@ $< $(CFLAGS)

main: $(OBJECTS)
	$(CC) -O1 -o $@ $^ $(CFLAGS) -L. -l:libcgc.so

.PHONY: clean

clean:
	rm -f *.o
