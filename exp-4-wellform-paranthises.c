#include<stdio.h>
#include<string.h>

void main()
{

int i,count=0;
char a[10];
printf("enter the expression");
scanf("%s",&a);


if(a[0] ==')' )
{
count--;
printf("syntax error");

}

else
{

for(i=0;a[i] != '\0 ';i++)
{

if(a[i] == '(' )
{
count++;
}

else if(a[i] == ')' )
{
count--;
}

}

if(count ==0){
printf("expression correct");
}

else{
printf("expression in correct");
}
}



}
