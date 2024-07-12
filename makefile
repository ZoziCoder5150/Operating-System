.PHONY: build
build:
	nasm -f elf32 src/boot/start.asm -o build/start.o
	nasm -f elf32 src/boot/header.asm -o build/header.o
	mkdir -p build/iso/boot/grub
	cp src/grub.cfg build/iso/boot/grub/grub.cfg
	ld -m elf_i386 -n -T src/linker.ld build/header.o build/start.o -o build/iso/final.bin
	grub-mkrescue build/iso -o build/final.iso