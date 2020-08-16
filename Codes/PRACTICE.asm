
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
            include 'emu8086.inc'
org 100h 
PRINT 'LALALALLA '         
         
MOV AH, 1
INT 21H 
MOV VAR1, AL
;MOV DL, VAR1

MOV CL, VAR1


MOV AX, @DATA
MOV DS, AX

MOV AL, 5
MOV BL, 4
CMP AL, BL 
JE L1 




DIV CL  
      JMP FINISH:

L1:  

MOV CL, 7  
FINISH: 


ret
   VAR1 DB ?