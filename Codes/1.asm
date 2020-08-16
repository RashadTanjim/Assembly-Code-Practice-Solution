;to print all the ascii codes using JUMP instruction

ORG 100H

MOV CX,256

MOV AH,2
MOV DL,0

NSU:
 int 21H
 INC DL
 DEC CX
JNZ NSU

RET