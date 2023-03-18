%{
#include<stdio.h>
extern FILE *yyin;
%}

%%

(http:\/\/)?www\.[0-9 A-Z a-z]+\.com   { 
                                           printf("%s is valid hyperlink ",yytext);
                                           }
                                           
(http:\/\/)?www\.[0-9 A-Z a-z]+\.edu  { 
                                           printf("%s is valid hyperlink ",yytext);
                                           }


%%

main(int argc,char *argv[])
{

FILE *file;
file= fopen(argv[1],"r");
yyin=file;
yylex();
fclose(file);
}


yywrap()
{
return 1;
}


