all: build

build: main.cpp
	g++ -o elf2uf2 main.cpp
