
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt  

    
    
    
  
org 100h

  MOV AX, @DATA 
  MOV DS, AX
  
  MOV AH, 2
  MOV DL, VAR1     ; S
  INT 21H   
  
  MOV AH, 2      
  SUB VAR1, 18     ; VAR1=    65
  MOV DL, VAR1 
  INT 21H
  
  MOV AH, 2 
  add VAR1, 17
  MOV DL, VAR1     ;   VAR1 = 82
  INT 21H
  
  MOV AH, 2  
  SUB VAR1, 17
  MOV DL, VAR1     ; VAR1= 65
  INT 21H
  
  MOV AH, 2   
  ADD VAR1, 7
  MOV DL, VAR1     ; VAR1 =  72
  INT 21H
  

ret

    VAR1 DB 83


