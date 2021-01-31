CC = ~/RPI-Buildroot/buildroot-2020.02.9/output/host/bin/aarch64-linux-gcc
LDFLAGS= -L~/RPI-Buildroot/buildroot-2020.02.9/output/target/usr/lib/ -llibpaho-mqtt3a
LDFLAGS = -static

all: hello_world.c
	$(CC) hello_world.c -g -Wall -o hello_world.bin -L~/RPI-Buildroot/buildroot-2020.02.9/output/target/usr/lib/ -llibpaho-mqtt3a

clean:
	rm -f hello_world.bin

