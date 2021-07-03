MOV CX, [1000H] 
        MOV AX, 0   
        MOV DX, 1  
        MOV SI, 1002H
BACK:   MOV [SI], DX
        XCHG AX, DX
        ADD DX, AX
        INC SI
        LOOP BACK