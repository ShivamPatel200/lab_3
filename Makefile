CC = g++
SOURCES = main.cpp functions.cpp unit_test.cpp

all: main unit_test

main: 
	$(CC) main.cpp functions.cpp  -std=c++14 -o main

mainrun:
	rm -rf main unit_test
	$(CC) main.cpp functions.cpp  -std=c++14 -o main
	./main

unit_test:
	$(CC) unit_test.cpp functions.cpp  -std=c++14 -o unit_test

unitrun:
	rm -rf main unit_test
	$(CC) unit_test.cpp functions.cpp  -std=c++14 -o unit_test
	./unit_test

clean: 
	rm -rf main unit_test
