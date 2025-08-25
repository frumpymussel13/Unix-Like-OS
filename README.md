# The OS
Welcome, This a "simple" project. uhh if your better at README.md's please help
<hr>
To Install, either run install-packages-(your os).sh or just install nasm and qemu-full manualy
<hr>

To Build, run build.sh or run, 
`nasm src/main.asm -f bin -o build/main.bin`,
`cp build/main.bin build/main_floppy.img`,
`truncate -s 1440k build/main_floppy.img`,
`qemu-system-i386 -fda build/main_floppy.img`

<hr>
FAQ: How Did I Make this? I used @nanobyte 's tutorial and https://wiki.osdev.org