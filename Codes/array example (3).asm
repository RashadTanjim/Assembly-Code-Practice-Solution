
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

LEA SI,ARR1
LEA DI,ARR2 
LEA BX,ARR3

MOV CX,6

NSU:

MOV AL,[SI] ;COPYING THE VALUE FROM SI TO AL
ADD AL,[DI] ;ADDING THE VALUE OF DI WITH THE VALUE OF SI
MOV [BX],AL 
INC SI
INC DI
INC BX
LOOP NSU
     
     
MOV CX,6 
LEA BX,ARR3
    
NSU1:

MOV AH,2 
MOV DL,[BX] 
ADD DL,48
INT 21H
INC BX
LOOP NSU1




ret
ARR1 DB 1,2,3,4,5,6
ARR2 DB 6,5,4,3,2,1
ARR3 DB 6 DUP(' $ ') ;TO UNDERSTAND THAT IS THE LAST ELEMENT OF THE ARRAY


