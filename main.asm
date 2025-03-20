[org 0x7c00]

mov ah, 0x0e
mov bx, variable

printString:
     mov al, [bx]
     cmp al, 0 
     je $ 
     int 0x10
     inc bx
     jmp printString

variable: 
    db "Yet again, and again I come." , 0

inc al 
int 0x10

mov bx, 6
cmp bx, 5
je label
jmp $

label:
    mov ah, 0x0e
    mov al, 'X'
    int 0x10

jmp $


times 510-($-$$) db 0
dw 0xAA55 
