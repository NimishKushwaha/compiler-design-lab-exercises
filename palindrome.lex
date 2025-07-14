%{
#include <stdio.h>
#include <string.h>
int i, j, flag;
%}

%%
[a-zA-Z0-9]+ {
    flag = 1;
    for (i = 0, j = yyleng - 1; i <= j; i++, j--) {
        if (yytext[i] != yytext[j]) {
            flag = 0;
            break;
        }
    }
    if (flag)
        printf("Given string is Palindrome\n");
    else
        printf("Given string is not Palindrome\n");
}
.|\n { /* Ignore other characters */ }
%%

int main() {
    printf("Enter a string: ");
    yylex();
    return 0;
}
