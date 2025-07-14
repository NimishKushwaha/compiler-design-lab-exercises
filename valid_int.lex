%{ int vi=0, vf=0; %}
%%
^[-+]?[0-9]+$             vi++;
^[-+]?[0-9]*\.[0-9]+$     vf++;
.                         /* any other */
%%
int main(){ yylex(); if(vi) puts("Valid Integer"); else if(vf) puts("Valid Float"); else puts("Invalid");}
