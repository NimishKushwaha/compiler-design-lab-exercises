%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
[-]?[0-9]+ {
    int num = atoi(yytext);
    if (num > 0) {
        printf("%d is positive\n", num);
    } else if (num < 0) {
        printf("%d is negative\n", num);
    } else {
        printf("%d is zero\n", num);
    }
}
.|\n { /* ignore other chars */ }
%%

int main() {
    printf("Enter a number: ");
    yylex();
    return 0;
}
