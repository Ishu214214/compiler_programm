#include<stdio.h>
#include<string.h>

void main()
{
char keyword[32][10]={"if" , "else" , "return" , "for" ,"while"};  
// 32 row indexing and 10 coloum it will take character  in array like 'i' , 'f' , 'e' ,'l' , ........
//it will form 2D matrix

char str[30];
int flag=0,i;

printf("enter a string");
scanf("%s" , &str);

for(i=0;i<32; i++)
{

if(strcmp(keyword[i] ,str) == 0)  //strcmp is a function of string file
{
flag=1;
break;
}
else
{
flag=0;
}
}

if(flag == 1)
{
printf("string is a keyword");
}
else
{
printf("string is not found");
}

}

