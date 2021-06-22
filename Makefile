CFLAGS=-std=c11 -g -static

417cc: 417cc.c

test: 417cc
	./test.sh

clean:
	rm -f 417cc *.o *~ tmp*

.PHONY: test clean
