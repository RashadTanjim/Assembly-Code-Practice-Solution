
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h  

LEA SI,ARR1  
LEA DI,ARR2
LEA BX,ARR3

NSU:
MOV AL,[SI]
CMP AL,'$'
JE NSU1
MOV [BX],AL
INC SI
INC BX
JMP NSU

NSU1:
MOV AL,[DI]
CMP AL,'$'
JE EXIT
MOV [BX],AL
INC DI
INC BX
JMP NSU1

EXIT:
LEA BX,ARR3
MOV DX,BX
MOV AH,9
INT 21H



ret   

ARR1 DB 'BANGLA$'   
ARR2 DB 'DESH$'
ARR3 DB 50 DUP('$')





