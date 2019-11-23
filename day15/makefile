
main.asm : main.o makefile
	objconv main.o -fnasm main.temp
	sed -e '/global\|SECTION\|extern/g' main.temp > main_ubuntu.asm 	

main.o : main.c font_lib.c interrupt_lib.c string.h fifo.h memory.h Task.h Timer.h
	gcc main.c -m32 -fno-asynchronous-unwind-tables -Wincompatible-pointer-types -O0 -s -c -o main.o

