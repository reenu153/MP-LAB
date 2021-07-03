org 100h

mov ax,[1002h]
mov bx,[1000h]
mov cx,[1004h]
call sq
hlt
sq:
mul ax
mov [1006h],ax
mov ax,bx
mul cx
mov cx,4h
mul cx
mov cx,[1006h]
sub cx,ax
mov ax,2h
mov bx,[1000h]
mul bx
mov bx,ax
mov ax,cx
div bx
mov [1010h],ax  

ret
