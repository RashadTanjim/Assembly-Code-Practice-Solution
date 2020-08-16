
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
     
     
     MOV AX, @DATA
     MOV DS, AX                ; MUST WRITTEN FOR VARIABLE
     
     MOV AH,1
     INT 21H                   ; INPUT FUNC FOR VAR2
     MOV VAR2,AL
               
     MOV AH,2 
     
     MOV DL,VAR2               ; OUTPUT FUNC FOR VAR2
     INT 21H  
     
     ADD VAR1, 48              ; OUTPUT FUNC FOR VAR1
     MOV DL,VAR1
     INT 21H 
    
      


ret
      VAR1 DB 5  
      VAR2 DB ?

