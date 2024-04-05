/*
The first column is a line number, next is a byte offset, next is the machine code, 
then labels and assembler directives and finally the assembly language itself. 
Try changing the program to see what code it produces.
*/

#include <stdio.h>
#include <stdlib.h>

int function() {
    int i, sum = 0;
    for (i = 0; i < 100; i++) {
        sum += i;
    }
    return sum;
}

int main(int argc, char *argv[]) {
    if (argc > 0) {
        char s[256];
        // Ensure we don't exceed the buffer; consider the format string and potential space for the command
        snprintf(s, sizeof(s), "gcc -O -o %s %s.c -Wa,-aldn", argv[0], argv[0]); // Fixed potential buffer overflow issue
        system(s); // Note: using system() is generally not recommended for security reasons
    } else {
        printf("Usage: %s <source_file_without_extension>\n", argv[0]);
        return 1;
    }
    return 0;
}
