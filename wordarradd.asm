    DATA SEGMENT
    A DW 0100H,0200H,0303H,0405H
    SUM DW ?
  DATA ENDS
  CODE SEGMENT
    ASSUME:CS: CODE DS:DATA
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV CX,4
    MOV AX,0
    MOV SI,0
    LABEL1: ADD AX,A[SI]
           ADD SI,2
           LOOP LABEL1
           MOV SUM,AX 
    CODE ENDS
  END START