CC=gcc
CFLAGS=-c -Wall -I d1 -I d2 -I d3 -I d4 -I d5 -I d6 -I d7 -I d8 -I d9 -I d10
LDFLAGS=
SOURCES=$(wildcard *.c)
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=hello

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

%.o:%.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf *o hello
	rm -rf *~
