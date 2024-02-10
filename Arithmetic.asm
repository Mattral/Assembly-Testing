;  """"""""""""""""""""""""""""""""
;  """"""""""""""""""""""""""""""""
;  Example: translate the following C statement to assembly language and machine code.

;  x=y*(y+z);

;  Assume x,y and z are stored in memory locations 0,1 and 2 and there are general purpose registers called A,B,C... etc

;  """"""""""""""""""""""""""""""""
;  """"""""""""""""""""""""""""""""

Assembly         Machine
Language         Code
MOV A,[1]        3e 00 01 ; A=y
MOV B,[2]        3f 00 02 ; B=z
ADD A,B          8c       ; A=A+B;
MULT A,B         9f       ; A=A*B
MOV [0],A        4e 00 00 ; x=A

;  The 3e,3f,8c,9f and 4e are binary codes that contain the operation and registers for the instruction.

