%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
[0-9]+ { 
    int num = atoi(yytext); 
    printf("Square of %d is: %d\n", num, num * num); 
}
.|\n { /* Ignore other characters */ }
%%

int main() {
    printf("Enter a number: ");
    yylex();
    return 0;
}
