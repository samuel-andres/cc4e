/* Exercise RS-5
 * Write a C program to implement this Python program, using
 * the fgets function instead of scanf.
 *
 * print('Enter line')
 * line = input()
 * print('Line:', line)
 *
*/
#include <stdio.h>

int main() {
    printf("Enter line\n");
    char line[100];
    fgets(line, 100, stdin);
    printf("Line: %s\n", line);
}