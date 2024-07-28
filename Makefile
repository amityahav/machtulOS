make:
	i686-elf-gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
	i686-elf-gcc -T linker.ld -o machtulos.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc
	qemu-system-i386 -kernel machtulos.bin