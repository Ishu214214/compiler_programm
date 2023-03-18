%{
#include<stdio.h>
void display(int);

%}

%%

[1-9][0-9]{9}+ { int flag = 1;
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
           printf("the given no is match");
        }
        else
        {
          printf("not a match no");
        
        }


}

int main()
{
printf("enter the mobile no");
yylex();
}
  
 
                                   
                                   
