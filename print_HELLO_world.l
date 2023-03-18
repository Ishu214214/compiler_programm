%{
#include<stdio.h>
%}

%%

[\n]   { printf("hello");  }

%%
void main()
{
yylex();
}
