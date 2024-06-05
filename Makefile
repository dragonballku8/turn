all: libjava.so

libjava.so: java.c
	gcc -Wall -fPIC -shared -o libjava.so java.c -ldl

.PHONY clean:
	rm -f libjava.so