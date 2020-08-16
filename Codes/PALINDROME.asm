
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


org 100h
lea si, str1
lea di, str2
mov ah, 1     
mov cx, 0    

input:
int 21h
cmp al, 0dh   ; odh==cret
je next
mov [si], al
inc si
inc cx
jmp input    

next:
mov bx, cx  
mov ah, 2
mov dl, 0ah
int 21h         

reverse:
dec si
mov al, [si]
mov [di], al       
inc di
loop reverse 

mov cx, bx  
lea si, str1
lea di, str2  

check:
mov al, [si]
cmp al, [di]
jne print     ; for not palindrome
inc si
inc di
loop check  

mov ah, 9 
lea dx, pal   ; for palindrome
int 21h
jmp finish  

print:
mov ah, 9 
lea dx, notpal
int 21h     

finish:   
  
ret
str1 db 50 dup(?) 
str2 db 50 dup(?) 
pal db "Palindrome$"
notpal db "Not a palindrome$"


     




