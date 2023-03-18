#include<stdio.h>
#include<string.h>
#include<stdlib.h>

int main()
{

char str[100];
int count=0;
FILE *fp;
int i=0;
int len=0;

fp=fopen("text.txt","r");

if(fp==NULL)
{
printf("file not found");
exit (0);
}

while(fscanf(fp,"%s",str) != EOF)
{
len=strlen(str);
for(i=0;i<len;i++)
{
switch(str[i])
{
case '*' :
printf("operation multiplication\n");
count++;
break;

case '+' :
printf("operation add\n");
count++;
break;

case '-' :
printf("operation sun\n");
count++;
break;

case '/' :
printf("operation divide\n");
count++;
break;


case '<' :
if(str[i+1] == '=' )
{
printf("operation <=\n");
}
count++;
break;


case '>' :
if(str[i+1] == '=' )
{
printf("operation <=\n");
}
count++;
break;



}
}
}


return 0;
}
