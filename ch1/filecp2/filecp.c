#include <stdio.h>

int main() /* copy input to output; 2nd version */
{
	int c;

	printf("%i\n", EOF);

	while ((c = getchar()) != EOF)
	{
		putchar(c);
	};
};
