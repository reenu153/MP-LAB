

org 100h

mov ax,[1000h]
mov bx,[1002h]
mul bx
mov [1004h],ax
mov ax,dx
mov [1006h],ax
hlt
ret




