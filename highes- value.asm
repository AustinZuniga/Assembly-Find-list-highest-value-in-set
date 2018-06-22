.model small
.stack 32
.data
org 20h
data_in db 10h,20h,15h,25h,30h
 max   db  0    
.code
   mov   ax, @data  
   mov   ds, ax 
   mov 	si,offset data_in    
   mov   cl, 06      
   mov   al, max    

compare:  cmp   al, [si]  
   jnc   skip
   mov   dl, [si]    
   mov   al, dl    
skip:     inc   si    
   dec   cl    
   jnz   compare    
   mov   max, al    
   mov   ah, 4cH  
   int   21H
end