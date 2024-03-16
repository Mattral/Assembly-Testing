;  """"""""""""""""""""""""""""""""
;  """"""""""""""""""""""""""""""""

;  while (x--<4) {
;    y+=x;
;  }

;  """"""""""""""""""""""""""""""""
;  """"""""""""""""""""""""""""""""

;Assembly         Machine
;Language         Code
start:
 MOV A,[0]        3e 00 00
 SUB A,#4         58 04
 JMP NC,endloop   fb 0e
 MOV A,[0]        3e 00 00
 SUB A,#1         58 01
 MOV [0],A        4e 00 00
 ADD A,[1]        31 00 01
 MOV [1],A        4e 00 01
 JMP start        fc e9
endloop:

