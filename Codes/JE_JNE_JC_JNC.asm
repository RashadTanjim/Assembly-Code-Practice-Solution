
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

 MOV AX, 5 
;MOV BX, 5
 CMP AX, 4   ; CMP MEANS AX-5=5-5
 JE LBL1     ; JUMP IF EQUAL
 
 MOV VAR, 'L' 
 JMP FINISH
 
 LBL1:
 
 MOV VAR, 'O' 
 
 FINISH:
                
 MOV AH, 2
 MOV DL, VAR
 INT 21H               
 

ret

  VAR DB 0


