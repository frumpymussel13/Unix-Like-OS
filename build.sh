nasm src/main.asm -f bin -o build/main.bin
sleep 1
cp build/main.bin build/main_floppy.img
sleep 1
truncate -s 1440k build/main_floppy.img
sleep 1
qemu-system-i386 -fda build/main_floppy.img
