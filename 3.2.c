#include <stdio.h>
#include <stdbool.h>

#define ARRSIZE 1000

char printEscSeq(int c);

int main() {
    int  i;
    char c;
    char from[ARRSIZE] = {0};

    for (i=0; (c=getchar()) && i<ARRSIZE-1; i++) {
        putchar(printEscSeq(c));
        from[i] = c;
    }
    return 0;
}

char printEscSeq(c) {
    switch(c) {
        case '\n' : printf("\\n")          ; break;
        case ' '  : printf("_")  , c = '\0'; break;
        case '\t' : printf("\\t"), c = '\0'; break;
        case '\b' : printf("\\b"), c = '\0'; break;
    }
    return c;
}