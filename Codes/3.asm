
ORG 100H

.MODEL SMALL
.STACK 100H


.DATA

.CODE

MAIN PROC
    
    MOV AH, 1

    INT 21H
    MOV BH, AL      ;1st input
    INT 21H
    MOV CH, AL      ;2nd input
    
    MOV AH, 2       ;OUTPUT  FUNCTION
   
           
           
    SUB BH, CH       ; SUB VALUE
    ADD BH, 30H      ; ADD 30HEX VALUE
           
    
    MOV DL, 0AH
    INT 21H 
    MOV DL, 0DH
    INT 21H

    
    MOV DL, BH       ; PRINT
    INT 21H
    


    MOV AH, 4CH  ; RET
    INT 21H
    

MAIN ENDP
END MAIN

