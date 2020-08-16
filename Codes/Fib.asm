
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h    
    
    lea DX, msg1           
    mov AH, 09h            
    int 21h                                               
                            
    mov DL, 20h             
    mov AH, 02h             
    int 21h                          
 
    mov BH, 1
	mov DH, 1 
    mov CX, 5
    

		
    fibLoop:
		or DL, 30h
		mov AH, 02h
		int 21h
		mov DL, DH
		mov DH, BH
		    
		push DX
	        mov AL, DL
	        mov AH, DH
	        add AH, AL
	        mov BH, AH 
	    pop DX
	loop fibLoop
		
	ret
msg1 db "     FIBONACCI FIRST 5 TERMS      ", 0Dh,0AH
     db " I start from 0 while others like", 0Dh,0AH
	 db " to include the 1 in the first term.", 0Dh,0AH, "$"
fibTerm db 12 Dup(0)



ret




