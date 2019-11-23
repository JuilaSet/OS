"psftp.exe" luo@192.168.111.131 -pw Luosir@2014 -b "download.bat.sub" -bc

cp main_ubuntu.asm main.asm

nasm -o kernel.img kernel.asm
nasm -o boot.img boot.asm

cd D:
Floppy.exe ./

pause
