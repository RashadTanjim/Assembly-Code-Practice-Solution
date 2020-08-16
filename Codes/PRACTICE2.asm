
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


org 100h


jmp adder


printer:
mov ah,2
mov dl,al
add dl,'0'
int 21h
jmp finish


adder:
mov al,2
mov bl,2
add al,bl
jmp printer

finish:

ret







