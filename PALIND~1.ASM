
.MODEL SMALL
.STACK 100H
.DATA

STRING DB 'REENEER', '$'
ISPAL DB 'String is palindrome', '$'
NOTPAL DB 'String is not palindrome', '$'

.CODE
 
MOV AX, @DATA               ; 
MOV DS, AX

MOV SI, OFFSET STRING       ; 

LOOP1 :
    MOV AX, [SI]            ; 
    CMP AL, '$'             ; 
    JE LABEL1               ; 
    INC SI                  ; 
    JMP LOOP1

LABEL1 :
    MOV DI,OFFSET STRING    ; 
    DEC SI                  ; 

LOOP2 :
    CMP SI, DI              ; 
    JL OUTPUT1              ; 
    MOV AX,[SI]             ; 
    MOV BX, [DI]            ; 
    CMP AL, BL              ; 
    JNE OUTPUT2             ; 

    DEC SI                  ; 
    INC DI                  ; 
    JMP LOOP2               ; 

OUTPUT1:
    LEA DX, ISPAL           ; 
    MOV AH, 09H             ; 
    INT 21H                 ; 
    JMP EXIT

OUTPUT2:
    LEA DX, NOTPAL
    MOV AH, 09H
    INT 21H

EXIT:
    MOV AH, 4CH
    INT 21H

END
