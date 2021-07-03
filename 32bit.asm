.model small 
.stack 100h 
.data  
 op1 dd 01240000h  
 op2 dd 11110233h                                                           
 ans dd ?  
.code  
      mov      ax, @data  
      mov      ds, ax  
      mov      ax, word ptr op1         
      mov      bx, word ptr op1+2           
      mov      cx, word ptr op2         
      mov      dx, word ptr op2+2                   
      add      ax, cx                   

      jnc      add1                   

      add      bx,1h                     

      add1:
      add      bx,dx	
      mov      word ptr ans, ax          
      mov      word ptr ans+2, bx        
      mov      bx, word ptr ans+2         
      mov      dh, 2  
 l1:    
      mov      ch, 04h                   
      mov      cl, 04h                   
 l2:     
      rol      bx, cl                    
      mov      dl, bl                    
      and      dl, 0fH                   
      cmp      dl, 09                   
      jbe      l4  
      add      dl, 07                    
 l4:  
      add      dl, 30H  
      mov      ah, 02                    
      int      21H  
      dec      ch                        
      jnz      l2   
      dec      dh  
      cmp      dh, 0  
      mov     bx, word ptr ans            
      jnz      l1  
      mov      ah, 4ch                   
      int      21h  
  end