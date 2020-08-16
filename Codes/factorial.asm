
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 

mov ah, 1
int 21h
sub al, 48  

mov ah, 0
mov cx, ax
dec cx

fact:
mul cx
loop fact 

mov ah, 2 
add al, 48  ; <---
mov dl, al
int 21h




ret