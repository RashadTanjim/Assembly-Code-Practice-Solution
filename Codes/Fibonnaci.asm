
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h   

lea si,arr
mov [si],0
inc si
mov [si],1
MOV CX, 8

fib:  
mov al,[si]
add al,[si-1]
mov [si+1],al
inc si
loop fib   


MOV BX, [SI]

MOV AH, 2
MOV DX, BX
INT 21H


ret 
arr db 20 dup(0)




