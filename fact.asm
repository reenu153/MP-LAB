org 100h
       
        MOV CL, [1000H]
        MOV AL, 1
BACK:   MUL CL
        LOOP BACK   
        MOV [1002H], AL

ret


