
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
 
lea si, arr  
lea di, dig
mov cx, 8        ; TOTAL 8 ELEMENTS IN ARR
mov ah, 0

count:           
mov al, [si]
add di, ax
inc [di]
sub di, ax 
inc si
loop count


ret 
arr db 6,2,4,4,6,1,1,3    
dig db 10 dup(0)



