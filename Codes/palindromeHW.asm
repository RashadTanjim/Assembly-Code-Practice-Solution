
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

LEA SI, STR1
LEA DI, STR2

MOV CX, 0
MOV AH, 1

INPUT:
INT 21H
CMP AL, 0DH
JE NEXT
MOV [SI], AL
INC SI
INC CX
JMP INPUT    


NEXT:
MOV BX, CX
MOV AH, 2
MOV DL, 0AH
INT 21H


REVERSE:
DEC SI
MOV AL, [SI]
MOV [DI], AL
INC DI
LOOP REVERSE

MOV CX, BX
LEA SI, STR1
LEA DI, STR2

CHECK:
MOV AL, [SI]
CMP AL, [DI]
JNE NOTPALI
INC SI
INC DI   
loop CHECK 


MOV AH, 9
LEA DX, pal
int 21h   
jmp finish

NOTPALI:
MOV AH, 9
LEA DX, notpal
int 21h


finish:

ret

    STR1 db 50 dup(?)
    STR2 db 50 dup(?)
    pal db "palindrome$"
    notpal db "not palindrome$"

