
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt



ORG 100H
MOV AH, 1 


INT 21H 
MOV BL, AL ;1st input  


INT 21H 
MOV CL, AL ;2nd input 

ADD BL, CL ;add the two values (summation in hex value)
SUB BL, 30H ;subtract 30h from the sum to get the ascii of the required result

MOV AH, 2

MOV DL, 0AH
INT 21H

MOV DL, 0DH
INT 21H

MOV DL, BL
INT 21H


RET




