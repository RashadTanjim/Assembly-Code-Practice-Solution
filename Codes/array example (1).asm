
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

LEA BX,ARR1
MOV CX,5

NSU:
MOV AH,1
INT 21H  
MOV [BX],AL
INC BX
LOOP NSU   

MOV AH,2
MOV DL,13D
INT 21H
MOV DL,10D
INT 21H


LEA SI,ARR2
MOV CX,5

NSU1:
MOV AH,1
INT 21H  
SUB AL,48D
MOV [SI],AL
INC SI
LOOP NSU1

ret

ARR1 DB 5 DUP(?) ;TAKE CHARACTER AS INPUT
ARR2 DB 5 DUP(?) ;TAKE NUMBER AS INPUT



