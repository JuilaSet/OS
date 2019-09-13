foobar : foo.o bar.o
	ld -m elf_i386 -o foobar foo.o bar.o

bar.o : bar.c
	gcc -m32 -c -o bar.o bar.c

foo.o : foo.asm
	nasm -f elf32 -o foo.o foo.asm
