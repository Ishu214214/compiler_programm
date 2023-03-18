// to cheak the well form well-formed of paranthesis

#include <stdio.h>
#include <stdlib.h>
#include <string.h>


int main()
{
	FILE* ptr;
	char ch;
	int a[100];

	
	ptr = fopen("text.txt", "r");

	if (NULL == ptr) {
		printf("file can't be opened \n");
	}

	printf("content of this file are \n");

	do {
		ch = fgetc(ptr);
		printf("%c", ch);
		

	} while (ch != EOF);
	
	

	fclose(ptr);
	//printf("%c",ch);
	return 0;
}

