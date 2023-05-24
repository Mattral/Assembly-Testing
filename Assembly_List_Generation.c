#include <stdio.h>
#include <stdlib.h>
int function() {
int i,sum;
   sum=0;
   for(i=0;i!=100;i++) 
      sum=sum+i;
    return sum;
} 

void main(int argc[],char *argv[]) {
   char s[256];

   sprintf(s,"gcc -O %s.c -Wa,-aldn",argv[0]);     
   system(s);
} 

/*
The first column is a line number, next is a byte offset, next is the machine code, 
then labels and assembler directives and finally the assembly language itself. 
Try changing the program to see what code it produces.
*/