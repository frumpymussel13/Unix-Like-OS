; bios only boots os with 0x7C00
org 0x7C00
bits 16

%define ENDL 0x0D, 0x0A

start:
    jmp main

puts:
    push si
    push ax

.loop:
    lodsb
    or al, al
    jz .done
    jmp .loop
    mov ah, 0x0e
    int 0x10




.done:
    pop ax
    pop si
    ret


main:
    mov ax, 0
    mov ds, ax
    mov es, ax

    mov ss, ax
    mov sp, 0x7C80

    mov si, msg_Hello
    call puts


    hlt

.halt
    jmp .halt

msg_Hello: 'Helo, Welcome to my Unix Like OS!', ENDL, 0

times 510-($-$$) db 0
dw 0AA55h