mov ah, 0x0e ; tty mode
mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10 ; 'l' is still on al
mov al, 'o'
int 0x10
mov al, ','
int 0x10
mov al, 0x20 ; SPACE
int 0x10
mov al, 'P'
int 0x10
mov al, 'a'
int 0x10
mov al, 'u'
int 0x10
mov al, 'l'
int 0x10

jmp $ ; jump to current address = infinite loop

; padding and magic number
times 510 - ($-$$) db 0
dw 0xaa55 