
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;MOV BH, 0
MOV BL, 10D

INPUT:
MOV AH, 1
INT 21H
CMP AL, 13D    ; 13D = done
JNE NUM        ; jump NUM if not equal

JMP EXIT       ; jump exit if equal

NUM:
SUB AL, 48D    ; 30H == 48D
MOV CL, AL
MOV AL, 0
MUL BL
ADD AL, CL
MOV BH, AL


JMP INPUT 

EXIT:    
MOV AH,2    
MOV DL, 0AH
INT 21H   
ADD BH, 48
MOV DL, BH
INT 21H

ret




