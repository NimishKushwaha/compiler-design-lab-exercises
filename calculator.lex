%{ int op=0; float a,b; %}
dig [0-9]+(\.[0-9]+)?
%%
{dig}    { if(op==0) a=atof(yytext); else b=atof(yytext); if(op) printf("= %f\n", op==1 ? a+b : op==2 ? a-b : op==3 ? a*b : a/b); op=0;}
\+       { op=1; }
-        { op=2; }
\*       { op=3; }
\/       { op=4; }
%% 
int main(){ yylex(); }
