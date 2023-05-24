""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""
Example of:

for(i=0;i!=100;i++) {
  score[i]=0;
}
""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""

Assembly         
Language
MOV C,#0           ; i=0
MOV B,[score]      
startloop:
 CMP C,#100        ; if (i == 100)
 JMP Z,endofloop   ;     goto endofloop
 MOV A,#0
 MOV [B+C],A       ; *(score + i)=0
 ADD C,1           ; i++
 JMP startloop     ; goto startloop
endofloop: