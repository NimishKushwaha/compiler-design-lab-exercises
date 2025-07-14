%{
int word_count = 0;
%}

%%
[a-zA-Z]+ { word_count++; }
.|\n      { /* ignore other characters */ }
%%

int main() {
    printf("Enter a string: ");
    yylex();
    printf("Total words: %d\n", word_count);
    return 0;
}
