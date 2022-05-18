#include <stdio.h>

#define ARRSIZE 100

int power(int p, int p16);

int main() {
    int i;
    int size;
    int p16 = 16;
    int result = 0;
    int hex[ARRSIZE] = {'A',2,'D',2,'f'};

    for (i=0; hex[i]!='\0'; i++) {
        size = i+1;
    }

    for (i=0; i<size; i++) {
        switch(hex[i]) {
            case 'A' : hex[i] = 10 ; break;
            case 'a' : hex[i] = 10 ; break;

            case 'B' : hex[i] = 11 ; break;
            case 'b' : hex[i] = 11 ; break;
            
            case 'C' : hex[i] = 12 ; break;
            case 'c' : hex[i] = 12 ; break;
            
            case 'D' : hex[i] = 13 ; break;
            case 'd' : hex[i] = 13 ; break;
            
            case 'E' : hex[i] = 14 ; break;
            case 'e' : hex[i] = 14 ; break;
            
            case 'F' : hex[i] = 15 ; break;
            case 'f' : hex[i] = 15 ; break;
        }
    }

    for (i=0; i<size; i++) {
        result += (hex[i] * power(size-i-1, p16));
    }

    printf("%d\n", result);

    return 0;
}

int power(int p, int p16) {
    int r = 1;
    for (int i = 0; i<p; i++) {
        r *= p16;
    }
    return r;
}