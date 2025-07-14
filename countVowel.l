%{
int vowels = 0;
%}

%%
[aeiouAEIOU] { vowels++; }
.|\n         { /* ignore other characters */ }
%%

int main() {
    yylex();
    printf("Number of vowels: %d\n", vowels);
    return 0;
}
