
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

lea si, str1
lea di, str2  

mov ah,1
mov cx, 0

input:
int 21h
cmp al, 0dh
je l1  

mov [si], al
inc si
inc cx
jmp input 
l1:
mov dx, cx

reverse:
dec si
mov al, [si]   ; reverse loop
mov [di], al
inc di
loop reverse

mov ah, 2
mov dl, 0ah
int 21h  

mov [di], '$'
mov ah, 9  

lea dx, str2
int 21h 
 

ret    
str1 db 50 dup(?)
str2 db 50 dup(?)




ret




