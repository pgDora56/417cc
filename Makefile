CFLAGS=-std=c11 -g -static

# 417cc: 417cc.c
TARGET=417cc.c
OUTPUT=417cc

test: 
	cc $(CFLAGS) -o $(OUTPUT) $(TARGET)
	./test.sh

clean:
	rm -f $(OUTPUT) *.o *~ tmp*

.PHONY: test clean
