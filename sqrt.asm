org 100h

MOV CX, [1000H]
XOR BX, BX     
MOV [1002H], 0

BACK:
    INC BX
    MOV AX, BX
    MUL BX 
    CMP CX, AX
    JG BACK
    
CMP CX, AX
JNE EXIT 
MOV [1002H], 1  

EXIT: 
ret