 
 org 100h

   

; case AL
; 1, 3:
           CMP AL,1    ; AL=1?
           JE ODD      ; yes , display 'o'
           CMP AL,3    ; AL='3'
           JE ODD      ; yes , display 'o'


; 2, 4:
           CMP AL,2    ; AL=2?
           JE EVEN      ; yes , display 'e'
           CMP AL,4    ; AL=4 ?
           JE EVEN      ; yes , display 'e' 
           JMP END_CASE ; not 2..4
                         ; display 'o'

ODD :       
            MOV DL , 'o' ; get 'o'
            JMP DISPLAY    ; go to display 
                           ; display 'e'

EVEN : 
           MOV DL, 'e' ; get 'e'

DISPLAY :

        MOV AH,2
        INT 21H ; display char 

END_CASE:
      
      
      ret