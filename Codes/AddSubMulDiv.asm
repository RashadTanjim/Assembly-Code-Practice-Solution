
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

  MOV AL, 13
  MOV BH, 3 
  MOV CX, 3
  ;MOV DX, 3 
  
  ADD AX, CX 
  ;MOV CX, AX 
  MOV AH, 0
  DIV BH  
  
  
    
    
        

ret




