ASSUME CS:CODE,DS:DATA
DATA SEGMENT
LIST DW 3H, 8H, 1H, 9H
COUNT EQU 04
DATA ENDS

CODE SEGMENT
START:
       MOV AX,DATA
       MOV DS,AX
       MOV DX,COUNT-1
L1:MOV CX,DX
       MOV SI,OFFSET LIST

L2:MOV AX,[SI]
       CMP AX,[SI+2]
       JL UPD
       XCHG [SI+2],AX
       XCHG [SI],AX

UPD:  ADD SI,02
       LOOP L2
       DEC DX
       JNZ L1
       MOV DI,OFFSET LIST
       MOV CX,COUNT

PRINT:    MOV AX,[DI]
       ADD AX,03030H
       MOV DX,AX
       MOV AH,02H
       INT 21H
       ADD DI,02
       LOOP PRINT

      MOV AH,4CH
      INT 21H
      CODE ENDS
      END START