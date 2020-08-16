
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt     



; QUESTION: take an a character through user input and show whether it is vowel or constant

org 100h
        MOV AH, 1
        INT 21H
        
        MOV VAR, AL
        CMP VAR, 'A'
        JE LBL
        
        CMP VAR, 'E'
        JE LBL
        
        CMP VAR, 'I'
        JE LBL  
        
        CMP VAR, 'O'
        JE LBL
        
        CMP VAR, 'U'
        JE LBL
        
        MOV CL, 'C'  
        JMP FINISH
        
        
        LBL:
        MOV CL, 'V'
        JMP FINISH
        
        FINISH:
        MOV AH, 2 
        
        MOV DL,0AH
        INT 21H
       
        MOV DL, CL
        INT 21H

ret


  var db ?

