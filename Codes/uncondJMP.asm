
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ah, 1
int 21h
sub al, 48   

mov ah, 0   

mov dl, 3
div dl 

cmp ah, 0  ; here ah is remainder..if ah = 0 then, JE executes
je lbl1
mov cl, 0 ; if ah not 0
jmp finish ; uncond jump
    
    
lbl1:
mov cl, 1  

finish: 

ret
