
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h    

MOV BX, 109
MOV AH,2
MOV DX,BX    ; FOR DISPLAY EACH NUMBER
INT 21H  



lea si,arr
mov [si], 0
 

MOV AH,2
MOV DL, [SI]    ; FOR DISPLAY EACH NUMBER
INT 21H  

inc si 
mov [si],1  

MOV AH,2
MOV DL, [SI]      ; FOR DISPLAY EACH NUMBER
INT 21H

mov cx, 7

fib:  
mov al, [si]
add al, [si-1]
mov [si+1],al 

MOV AH,2
MOV DL, [SI] ; FOR DISPLAY EACH NUMBER
INT 21H

inc si
loop fib

    
;MOV BX, [SI]

;MOV AH, 2

;ADD BX, 48
;MOV DX, BX
;INT 21H





ret 
arr db 20 dup(0)



