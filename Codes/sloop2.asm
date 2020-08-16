
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

lea si, str1
lea di, str2    ; lea uses to print the string instructions 
lea bp, str3 

mov ah, 1       ; to take input
mov cx, 0       ; to make cx zero

input:
int 21h
cmp al, 0dh
je l1   

mov [si], al    
inc si
inc cx           ; count how many times loop runs
jmp input   

l1:
 mov dx, cx      ; equal so we store cx to dx to display it

reverse:
dec si
mov al, [si]     ; reverse loop
mov [di], al
inc di
loop reverse 

mov cx, dx
lea si, str1     ; str1 amd str1 will be sent to str3
lea di, str2

concat1:
mov al,[si]
mov [bp],al
inc si
inc bp
loop concat1
mov cx, dx

concat2:
mov al,[di]
mov [bp],al
inc di
inc bp
loop concat2 

mov cx, dx


mov ah, 2       ; to make it displayed
mov dh, 0
mov dl, 0ah

int 21h  
mov [bp], '$'
mov ah, 9       ; ah, 9 to print string     

lea dx, str3    ; store str3 into dx to display
int 21h        
 

ret    
str1 db 50 dup(?)
str2 db 50 dup(?)
str3 db 50 dup(?)


