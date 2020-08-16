
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

LEA SI,ARR1
 


MOV CX,5

NSU:

MOV AL,[SI] 
INC SI
LOOP NSU
     
     
MOV CX,5
LEA BX,ARR1
    
NSU1:

MOV AH,2 
MOV DL,[BX+4] 
INT 21H
DEC BX
LOOP NSU1




ret
ARR1 DB 'a','b','c','d','e'




