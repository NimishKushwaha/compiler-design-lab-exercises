%{
#include <stdio.h>
#include <ctype.h>
%}

%%
[a-z] { printf("%c", toupper(yytext[0])); }
.|\n  { ECHO; }
%%

int main() {
    printf("Enter a string: ");
    yylex();
    return 0;
}
