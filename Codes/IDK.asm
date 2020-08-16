
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
                      
    LEA SI, ST1  
    LEA DI, ST2  
    LEA BP, ST3
    
    MOV AH, 1
    MOV CX, 0
    
    INPUT: 
    INT 21H
    CMP AL, 013
    JE LABEL
    
    MOV [SI], AL
    INC SI
    INC CX
    JMP INPUT 
    
    LABEL:
    MOV DX, CX
    
    REVERSE:
    DEC SI
    MOV AL, [SI]
    MOV [DI], AL
    INC DI
    LOOP REVERSE
    
    MOV CX, DX
    
    LEA SI, ST1  
    LEA DI, ST2    
    CONCAT:
    MOV AL, [DI]
    MOV [BP] , AL
    INC DI
    INC BP 
    LOOP CONCAT
    
    MOV CX, DX
    
    CONCAT1:
    MOV AL, [SI]
    MOV [BP] , AL
    INC SI
    INC BP 
    LOOP CONCAT1
    
    MOV CX, DX
    
    MOV AH, 2
    MOV DH, 0
    MOV DL, 013
    INT 21H
    
    MOV [BP], '$'
    MOV AH, 9
    
    LEA DX, ST3
    INT 21H
    
    
     
    
                      
ret


          ST1 DB 10 (?)
          ST2 DB 10 (?)   
          ST3 DB 10 (?) 
