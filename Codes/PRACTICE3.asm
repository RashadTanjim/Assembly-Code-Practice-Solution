
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
  
MOV CL, 7  

MOV AH, 2 
MOV DL, CL
INT 21H


MOV AL, 83
MOV BL, 3

;MOV AH, 0

DIV BL

ret




