/* Exercise RS-4
 * Write a C program equivalent to this Python program

 * print('Enter line')
 * line = input()
 * print('Line:', line)
 *
*/

#include <stdio.h>

int main() {
    printf("Enter line\n");
    char line[100];
    scanf("%[^\n]100s", line);
    printf("Line: %s\n", line);
}