CC = ~/RPI-Buildroot/buildroot-2020.02.9/output/host/bin/aarch64-linux-gcc

all: hello_world.c
	$(CC) hello_world.c -g -Wall -o hello_world.bin

clean:
	rm -f hello_world.bin

