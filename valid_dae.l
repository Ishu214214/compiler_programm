%{
#include<stdio.h>
void display(int);

%}

%%

([0-2][0-9]|3[0-1])\/(0[1-9]|1[0-2])\/([1-2][0-9][0-9][0-9])+ { int flag = 1;
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
           printf("the given date is valid");
        }
        else
        {
          printf("not a match ");
        
        }


}

int main()
{
printf("enter the date");
yylex();
}
  
 
                                   
                                   
