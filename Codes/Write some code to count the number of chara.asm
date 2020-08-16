    org 100h
    
    
   ; Write some code to count the number of chara ters In; n

  
MOV DX,0 ;DX counts characters
MOV AH,1 ;prepare to read
INT 21H ;character in AL 

WHILE_: 

CMP AL, 0DH ;CR?
JE END_WHILE ;yes, exit
INC DX ;not CR, increment count
INT 21H ;read a character
JMP WHILE_ ;loop back 


END_WHILE:
    
    
    
    
    
    
    
    
    
    
    
    
    
  


