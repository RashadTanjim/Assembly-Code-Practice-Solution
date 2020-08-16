.MODEL SMALL
.STACK 100H
.CODE  

 MAIN PROC 
    
    
    MOV AH,1 
    INT 21H 
    SUB AL, 48                ;INPUT
    MOV BL,AL

    MOV AH,2
    MOV DL,0DH              ; ODH for hexa
    INT 21H                 ;NEWLINE
    MOV DL,0AH              ; OAH for hexa
    INT 21H
    
    
    MOV AH,2 
    ADD BL, 48
    MOV DL,BL               ;OUTPUT
    INT 21H
     
    
    
   EXIT:
   
   MOV AH, 4CH
   INT 21H  
   MAIN ENDP
 END MAIN