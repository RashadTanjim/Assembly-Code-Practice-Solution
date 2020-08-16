
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h  

 
  MOV DL, 3
  
  MOV AH, 1
  INT 21H  
  SUB AL, 48   ; 1st INPUT 
  MOV BL, AL 
  
  MOV AL, 0 
  
  
  MOV AH, 1
  INT 21H  
  SUB AL, 48   ; 2nd INPUT
  MOV CL, AL  
  
  MOV AL, 0
  
  MOV AH, 1
  INT 21H      ; 3rd INPUT
  SUB AL, 48
    
  
  ADD BL, CL   ; sum of 3 numbers
  ADD AL, BL  
  
  MOV AH, 0    ; before doing div, make ah=0 INCASE if the div produces a remainder value which will store in AH
   
  DIV DL
  
  MOV DL, 0 
  
  MOV BH, AH    ; AH= REMAINDER PUTTING INTO BH
  
  MOV AH, 0
   
  
  MOV AH, 2     ; show output OF 3 avg nums  
  
  
  ADD AL, 48    ; QUOTIENT to convert it into decimal
  ADD BH, 48    ; REMAINDER to convert it into decimal 
  
                 
  MOV DL, AL    ; SHOW QUOTIENT 
  INT 21H  
  
  MOV DL, 0AH   ; NEWLINE
  INT 21H
  
  MOV DL, BH    ; SHOW REMAINDER
  INT 21H
  


ret
      VAR1 DB 3 
      VAR2 DB ?

