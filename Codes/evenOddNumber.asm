           org 100h
                     
                    
                     mov ah,1
                     int 21h      ; INPUT 
                     sub al, 48 
                     
                     mov ah, 0  
                     mov dl, 2    
                     div dl
                     
                     cmp ah, 0    
                     je lbl       ; je=jump equal  
                     
                     mov var,'O'
                     jmp finish
                     
                     lbl:
                     mov var, 'E'   
                     
                     finish:                         
                     mov ah, 2   
                     mov dl, 0AH
                     int 21h  
                     mov dl, 0DH
                     int 21h
                     mov dl, var
                     int 21h
                     
                      
                       
              ret
                      var DB 0