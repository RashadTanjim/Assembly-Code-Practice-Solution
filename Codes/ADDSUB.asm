
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AH, 1

INT 21H
MOV BH, AL


INT 21H
MOV BL, AL

ADD BH,BL

SUB BH,48


MOV AH, 2
MOV DL, 10
INT 21H

MOV DL,13
INT 21H

MOV DL, BH
INT 21H

RET






