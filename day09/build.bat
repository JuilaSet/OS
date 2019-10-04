nasm -o kernel.img kernel.asm
nasm -o boot.img boot.asm

cd D:
Floppy.exe ./

pause
