DATA SEGMENT
UP DW 0203H
P DW 5 DUP(?)
DATA ENDS
CODE SEGMENT
START:
MOV AX,DATA
MOV DS,AX
MOV SI,0H
MOV DI,0H

MOV AX,WORD PTR UP[SI]
SHL AL,04H
SHR AX,04H
MOV BYTE PTR P[DI],AL
MOV SI,02H
INC DI

CODE ENDS
END START