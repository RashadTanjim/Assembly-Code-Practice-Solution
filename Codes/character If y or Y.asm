                          ; read ·a character
 ; Read a character. If it's "y" or "Y", display it; otherwise,



MOV AH, 1 ;prepare to .read·
INT 21H ;char in AL
           ; if (cha:-acter ~ 'y') or "(character = 'Y')
CMP AL, 'y' ;char J 'y'?
JE THEN      ;yes, go to display it
CMP AL, 'Y' ;char ~ 'Y'?
JE THEN    ;yes, go to display it
JMP ELSE_ ;no, termina~e  

THEN:
MOV AH,2 ;prepare to display
MOV DL,AL ;get char
INT 21H ;display it
JMP END_IF ;and exit 

ELSE_: 

MOV AH, 4CH
INT 21H ;DOS exit
END_IF:
