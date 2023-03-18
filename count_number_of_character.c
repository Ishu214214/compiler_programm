//write a program to count_number_of_character ,blank ,text and line that used in a file as a data

#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<ctype.h>

int main()
{

FILE *fp;
char ch;
int nol=0,not=0, nob =0,noc=0,nod=0; // nol of line =nol

fp=fopen("text.txt","r");

while(1)
{
ch=fgetc(fp);
if(ch == EOF)
{
break;
}
noc++;
if(ch == ' ' )
{
nob++;
}

if(ch == '\n')
{
nol++;
}

if(ch== '\t' )
{
not++;
}

if(isdigit(ch))
{
nod++;
}

}
printf("character %d\n",noc);
printf("character %d\n",nod);
printf("character %d\n",nob);
printf("character %d\n",not);
printf("character %d\n",nol);


return 0;
}
