
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


mov ah, 2    ; 4 space forword
mov dl, 20H
int 21h
mov dl, 20H
int 21h
mov dl, 20H
int 21h
mov dl, 20H
int 21h


        
mov bh, 2Ah ; initialize dimon 

mov dl, bh ; dimond value store to DL register
int 21h



mov dl, 0AH ; new line
int 21h
    
mov dl, 08H  ;2 space back
int 21h
mov dl, 08H  
int 21h

mov dl, bh   ; print dimond
int 21h

mov dl, 20H  ;1 space forword
int 21h

mov dl, bh   ; print dimond
int 21h 
      
           
      
mov dl, 0AH ; new line
int 21h

mov dl, 08H  ;4 space back
int 21h
mov dl, 08H  
int 21h
mov dl, 08H  
int 21h
mov dl, 08H  
int 21h

mov dl, bh   ; print dimond
int 21h

mov dl, 20H  ;3 space forword
int 21h
mov dl, 20H  
int 21h
mov dl, 20H  
int 21h

mov dl, bh   ; print dimond
int 21h


 
mov dl, 0AH ; new line
int 21h

mov dl, 08H  ;6 space back
int 21h
mov dl, 08H  
int 21h
mov dl, 08H  
int 21h
mov dl, 08H  
int 21h 
mov dl, 08H  
int 21h
mov dl, 08H  
int 21h

mov dl, bh   ; print dimond
int 21h

mov dl, 20H  ;5 space forword
int 21h
mov dl, 20H  
int 21h
mov dl, 20H  
int 21h
mov dl, 20H  
int 21h
mov dl, 20H  
int 21h

mov dl, bh   ; print dimond
int 21h 



mov dl, 0AH ; new line
int 21h

mov dl, 08H  ;8 space back
int 21h
mov dl, 08H  
int 21h
mov dl, 08H  
int 21h
mov dl, 08H  
int 21h 
mov dl, 08H  
int 21h
mov dl, 08H  
int 21h
mov dl, 08H  
int 21h
mov dl, 08H  
int 21h

mov dl, bh   ; print dimond
int 21h

mov dl, 20H  ;7 space forword
int 21h
mov dl, 20H  
int 21h
mov dl, 20H  
int 21h
mov dl, 20H  
int 21h
mov dl, 20H  
int 21h 
mov dl, 20H  
int 21h
mov dl, 20H  
int 21h

mov dl, bh   ; print dimond
int 21h
  
  

mov dl, 0AH ; new line
int 21h

mov dl, 08H  ;8 space back
int 21h
mov dl, 08H  
int 21h
mov dl, 08H  
int 21h
mov dl, 08H  
int 21h 
mov dl, 08H  
int 21h
mov dl, 08H  
int 21h
mov dl, 08H  
int 21h
mov dl, 08H  
int 21h

mov dl, bh   ; print dimond
int 21h

mov dl, 20H  ;5 space forword
int 21h
mov dl, 20H  
int 21h
mov dl, 20H  
int 21h
mov dl, 20H  
int 21h
mov dl, 20H  
int 21h

mov dl, bh   ; print dimond
int 21h


          
mov dl, 0AH ; new line
int 21h

mov dl, 08H  ;6 space back
int 21h
mov dl, 08H  
int 21h
mov dl, 08H  
int 21h
mov dl, 08H  
int 21h 
mov dl, 08H  
int 21h
mov dl, 08H  
int 21h

mov dl, bh   ; print dimond
int 21h

mov dl, 20H  ;3 space forword
int 21h
mov dl, 20H  
int 21h
mov dl, 20H  
int 21h

mov dl, bh   ; print dimond
int 21h  



mov dl, 0AH ; new line
int 21h

mov dl, 08H  ;4 space back
int 21h
mov dl, 08H  
int 21h
mov dl, 08H  
int 21h
mov dl, 08H  
int 21h 

mov dl, bh   ; print dimond
int 21h

mov dl, 20H  ;3 space forword
int 21h

mov dl, bh   ; print dimond
int 21h  



mov dl, 0AH ; new line
int 21h

mov dl, 08H  ;2 space back
int 21h
mov dl, 08H  
int 21h 

mov dl, bh   ; print dimond
int 21h    


ret




