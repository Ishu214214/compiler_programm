%{
#include<stdio.h>
void display(int);

%}

%%

[a|e|i|o|u][ a-z A-Z]+ { int flag = 1;
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
           printf("the given word is vowel");
        }
        else
        {
          printf("not a vowel");
        
        }


}

int main()
{
printf("enter the word");
yylex();
}
  
 
                                   
                                   
