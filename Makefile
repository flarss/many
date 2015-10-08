CC=gcc
CFLAGS=-c -Wall -I d1 -I d11 -I d12 -I d13 -I d14 -I d15 -I d16 -I d17 -I d18 -I d19 -I d500
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
