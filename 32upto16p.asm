DATA SEGMENT
UP DD 02030405H
P DW 5 DUP(?)
DATA ENDS
CODE SEGMENT
START:
MOV AX,DATA
MOV DS,AX
MOV SI,0H
MOV DI,0H
MOV CX,02H
LABEL1:
MOV AX,WORD PTR UP[SI]
SHL AL,04H
SHR AX,04H
MOV BYTE PTR P[DI],AL
MOV SI,02H
INC DI
LOOP LABEL1
CODE ENDS
END START
