org 100h
           
           
  ; Read a character, and if it's an uppercase letter, display it.         
           
           
           
;read a character

MOV AH, 1   ; Read

INT 21H   ;char in AL

; if ( 'A' <=char ) and (char<='Z')

   
   CMP AL, 'A' 
   JNGE END_IF 
   CMP AL, 'Z'
   JNLE END_IF
   
   
   ; display
   
   MOV DL,AL ; get char
   MOV AH,2 
   INT 21H
   
   
   END_IF :
   
   ret