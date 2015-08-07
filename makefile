P=dh
OBJECTS= matrix.o tree.o analysis.o main.o
CFLAGS = -g -Wall -O3 -std=c99
LDLIBS=
CC=gcc
DEPS = matrix.h tree.h analysis.h

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

$(P): $(OBJECTS)
	$(CC) -o $(P) $(OBJECTS) $(CFLAGS)


