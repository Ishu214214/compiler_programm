%{
#include<stdio.h>
void display(int);

%}

%%

([0-1][0-2]):([0-5][0-9]):([0-5][0-9]):(am|pm)+ { int flag = 1;
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
           printf("the given time is valid");
        }
        else
        {
          printf("not a match ");
        
        }


}

int main()
{
printf("enter the time");
yylex();
}
  
 
                                   
                                   
