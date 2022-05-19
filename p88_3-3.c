#include <stdio.h>

#define ARRSIZE 100

int main() {
    int i;
    int s;
    int j;
    int ch1 = 0;
    int ch2 = 0;
    int ch3 = 0;
    char s1[ARRSIZE] = {'a','-','b','-','f'};
    char s2[ARRSIZE] = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','1','2','3','4','5','6','7','8','9','0'};
    
    for (i=0; i<ARRSIZE; i++) {
        if (s1[i] == '-') {
            ch1 = s1[i-1];
            if (ch2 == ch1) {
                for (j=1; j<ARRSIZE; j++) {
                    if (s2[j] == ch1) {
                        while (s2[j] != ch2) {
                            printf("%c", s2[j]);
                            j++;
                        }
                    }
                }
            }
            ch2 = s1[i+1];
            for (j=0; j<ARRSIZE; j++) {
                if (s2[j] == ch1) {
                    while (s2[j-1] != ch2) {
                        printf("%c", s2[j]);
                        j++;
                    }
                }
            }
        }
    }
    return 0;
}