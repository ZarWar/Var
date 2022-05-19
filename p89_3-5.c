#include <stdio.h>

void intToCharString(int n, char from[], char to[]);
int  intToString(int n, int from[], int to[]);
char reverseString(char from[], char to[], int size);
char convertIntToNumericBase(int digit, char string, int base);
int power(int p, int p16);
void convertCharToInt(char from[], int to[]);
char decToHex(char to[]);

int size = 0;

int main() {
    int n = 168;
    char from[10] = {0};
    char to[10] = {0};
    int digit[10] = {0};
    intToCharString(n, from, to);
    convertCharToInt(from, digit);
    decToHex(to);
    printf("%s\n", to);
}

void intToCharString(int n, char from[], char to[]) {
    int i, sign;
    if ((sign = n) < 0) {
        n = -n;
    }

    i = 0;
    do (from[i++] = n % 10 + '0');
    while((n/=10)>0);
    size = i;
}

int intToString(int n, int from[], int to[]) {
    int i, sign, size;
    if ((sign = n) < 0) {
        n = -n;
    }

    i = 0;
    do (from[i++] = n % 10 + '0');
    while((n/=10)>0);
    size = i;
    return *from;
}

char reverseString(char from[], char to[], int size) {
    for (int i=0; i<size && from[i]!='\n'; i++) {
        to[(size-1)-i] = from[i];
    }
    return *to;
}

char convertIntToNumericBase (int digit, char string, int base) {
    return 0;
}

int power(int p, int p16) {
    int r = 1;
    for (int i = 0; i<p; i++) {
        r *= p16;
    }
    return r;
}

void convertCharToInt(char from[], int to[]) {
    for (int i=0; i<size; i++) {
        switch(from[i]) {
        case '0' : to[i] = 0 ; break;
        case '1' : to[i] = 1 ; break;
        case '2' : to[i] = 2 ; break;
        case '3' : to[i] = 3 ; break;
        case '4' : to[i] = 4 ; break;
        case '5' : to[i] = 5 ; break;
        case '6' : to[i] = 6 ; break;
        case '7' : to[i] = 7 ; break;
        case '8' : to[i] = 8 ; break;
        case '9' : to[i] = 9 ; break;
        }
    }
}

char decToHex(char to[]) {
    int n = 168;
    int mod = 0;
    for (int i=0; i<size; i++) {
        mod = n % 16;
        switch (mod) {
            case 0 : to[i] = '0' ; break;
            case 1 : to[i] = '1' ; break;
            case 2 : to[i] = '2' ; break;
            case 3 : to[i] = '3' ; break;
            case 4 : to[i] = '4' ; break;
            case 5 : to[i] = '5' ; break;
            case 6 : to[i] = '6' ; break;
            case 7 : to[i] = '7' ; break;
            case 8 : to[i] = '8' ; break;
            case 9 : to[i] = '9' ; break;
            case 10 : to[i] = 'A' ; break;
            case 11 : to[i] = 'B' ; break;
            case 12 : to[i] = 'C' ; break;
            case 13 : to[i] = 'D' ; break;
            case 14 : to[i] = 'E' ; break;
            case 15 : to[i] = 'F' ; break;
        }

    }
    // int result = 0;
    // int result2 = 0;
    // for(int i=0; i<size; i++) {
        // result += digit[i] * power(i,16);
        // result2 = power(i,16);

        // printf("%d r2:%d\n", result, result2);
    // }
    return *to;
}

// int decToHex(int digit[]) {
//     int result = 0;
//     int result2 = 0;
//     for(int i=0; i<size; i++) {
//         result += digit[i] * power(i,10);
//         result2 = power(i,10);
//         printf("%d r2:%d\n", result, result2);
//     }
//     return result;
// }