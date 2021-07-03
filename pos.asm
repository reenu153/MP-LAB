org 100h

mov si, 1000h
mov dx, 1010h
mov bx, 1020h
mov cx, 0005h
again:  
    mov ax,[si] 
    shl ax,01h
    jnc pos
    mov di,dx   
    mov ax,[si]
    mov [di],ax 
    inc dx
    inc dx
    jmp cont
pos:
    mov di,bx
    mov ax,[si]
    mov [di],ax 
    inc bx
    inc bx 
cont:
    inc si
    inc si
    loop again

ret