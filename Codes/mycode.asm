.MODEL SMALL
.STACK 100H
.CODE  

 MAIN PROC 
    
    
    MOV AH,1      ; 1 means user input function 
    INT 21H      
    MOV BL,AL  
    
    MOV AH, 2     ; print function 
    MOV DL, 0AH   ;10H newline 
    INT 21H      
    MOV DL, 0DH   ;13 newline symmetric 
    INT 21H
    
    
    MOV AH,2      ; 2 means OUTPUT..DL use for output
    MOV DL,BL    
    INT 21H
    
    
   
  
  
 
    
    
   EXIT:
   
   MOV AH, 4CH
   INT 21H  
   MAIN ENDP
 END MAIN




