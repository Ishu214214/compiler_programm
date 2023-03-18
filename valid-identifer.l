%{
#include<stdio.h>
void display(int);

%}

%%

[a-z A-Z][a-z A-Z 0-9 _]+ { int flag = 1;
                                   display(flag);
                                   return;
                                  }
                                   
.+  { int flag = 0;
      display(flag);
      return;
    }

%%

   
void display(int flag)
      { 
        if(flag==1)
        {  
           printf("it is valid");
        }
        else
        {
          printf("not a match ");
        
        }


}

int main()
{
printf("enter the statement\n");
yylex();
}
  
 
                                   
                                   
