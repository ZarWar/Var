#include <stdio.h>

#define ARRSIZE 100

int main() {
    int i;
    int s;
    int j;
    int ch1 = 0;
    int ch2 = 0;
    int ch3 = 0;
    // char s1[ARRSIZE] = {'a','-','f','-','l'};
    char s1[ARRSIZE] = {'-','a','-','c','-','k','-'};
    char s2[ARRSIZE] = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','1','2','3','4','5','6','7','8','9','0'};
    
    for (i=0; i<ARRSIZE; i++) {
        if (s1[0] == '-' && i == 0) {
            printf("-");
            continue;
        }

        if (s1[i] == '-') {
            ch1 = s1[i-1];
            ch2 = s1[i+1];

            if (ch2 == ch1) {
                i++;
            }

            for (j=0; j<ARRSIZE; j++) {
                if (s2[j] > ch1 && s2[j] < ch2) {
                    printf("%c", s2[j]);
                }
            }
        } else {
            printf("%c",s1[i]);
            // printf("s2[%d] >%c\n", i, s1[i]);
        }
    }
    printf("\n");
    return 0;
}