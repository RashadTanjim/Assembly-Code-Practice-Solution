ORG 100H 
 
.MODEL SMALL
.STACK 100H 

.DATA    

    VAR DB "hello$"   ; assign string

.CODE 
 
MAIN PROC
    
     MOV AX, @DATA    ; pass the data
     MOV DS, AX
    
    
     MOV BL,VAR[0]    ; move address value to array
     SUB BL,20H 
     MOV CL,VAR[1]
     SUB CL,20H 
     MOV CH,VAR[2]
     SUB CH,20H 
     MOV BH,VAR[3]
     SUB BH,20H 
     MOV DH,VAR[4]
     SUB DH,20H  


     MOV AH,2         ; input function
     MOV DL,BL
     INT 21H
     MOV DL,CL        ; move CL to DL
     INT 21H 
    
     MOV DL,CH        ; move CH to DL
     INT 21H 
    
     MOV DL,BH        ; move BH to DL
     INT 21H
     
     MOV DL, DH       ; move DL to DL
     INT 21H  
    
    
     MOV AH,4ch       ; RET
     INT 21H
 
MAIN ENDP
END MAIN





