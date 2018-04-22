; mboot

org  0x7c00
bits 16

boot:
    mov si, bootmsg
    mov ah, 0x0e
    mov bh, 0x00

.loop lodsb
    or al, al
    jz halt
    int 0x10 ;; http://www.ctyme.com/intr/rb-0106.htm
    jmp .loop

halt:
    hlt

bootmsg:
    db  "Hello!", 0

times 510-($-$$) db 0

db 0x55
db 0xaa
