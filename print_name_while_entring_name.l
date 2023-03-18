%{
void display( char *);
%}

%%

[\n] {  char name[20];
        printf("enter name");
        scanf("%s",name);
        display(&name[0]);
        return 0;
        }
        
        
%%

void display(char *in)
{
printf("hi good morning %s",in);

}        

void main()
{

yylex();

}
