CC=gcc
CFLAGS=-I.
LIBS=-lbsd

BUILD := release

cflags.debug := -g -march=native
cflags.release := -g -O3 -march=native -DNDEBUG

CFLAGS := ${cflags.${BUILD}}

all: lam.o
	$(CC) $(CFLAGS) -o lam lam.o $(LIBS)
clean:
	-rm -f lam.o lam
.PHONY: all
