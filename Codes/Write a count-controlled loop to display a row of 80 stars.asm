    org 100h
    
    
   ; Write some code to count the number of chara ters In; n

    
  The code Is
MOV DX,O ;DX counts characters
MOV AH,l ;prepare to read
INT 21H ;character in AL 

WHILE_: 

CMP AL, ODH ;CR?
JE END_WHILE ;yes, exit
INC DX ;not CR, increment count
INT 21H ;read a character
JMP WHILE_ ;loop back 


END_WHILE:
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

Mov CX,8
MOV AH,2
MOV DL,'*'


INT 21h ;display a star
LOOP TOP ;repeat ao times   
   
 JCXZ SKIP

TOP:
LOOP TOP

SKIP:   


