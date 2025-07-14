%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void reverse_digits(char *str) {
    int length = strlen(str);
    for (int i = 0; i < length / 2; i++) {
        char temp = str[i];
        str[i] = str[length - i - 1];
        str[length - i - 1] = temp;
    }
}
%}

%%
[0-9]+ {
    char num_str[100];
    strcpy(num_str, yytext);
    reverse_digits(num_str);
    printf("Reversed number: %s\n", num_str);
}
.|\n { /* Ignore other characters */ }
%%

int main() {
    printf("Enter a number: ");
    yylex();
    return 0;
}
