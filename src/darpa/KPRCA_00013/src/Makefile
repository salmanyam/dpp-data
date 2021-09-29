CC=wllvm
CFLAGS= -Wall -g -O1
DEPS = libcgc.h accel.h accelfunc.h accelio.h convert.h ctype.h malloc.h queue.h stack.h stdarg.h stddef.h stdint.h stdlib.h string.h

SOURCES := $(wildcard *.c) 
OBJECTS := $(patsubst %.c, %.o, $(SOURCES))

%.o: %.c $(DEPS)
	$(CC) -O1 -c -o $@ $< $(CFLAGS)

main: $(OBJECTS)
	$(CC) -O1 -o $@ $^ $(CFLAGS) -L. -l:libcgc.so

.PHONY: clean

clean:
	rm -f *.o
