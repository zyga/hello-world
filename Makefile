.PHONY: all
all: hello

hello: hello.o

.PHONY: clean
clean:
	rm -f hello.o hello


CFLAGS += -Wall
