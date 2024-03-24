/* Exercise RS-3
 * Write a C program equivalent to this Python program:

 * print('Enter name')
 * name = input()
 * print('Hello', name)
 *
*/

#include <stdio.h>

int main() {
    printf("Enter name\n");
    char name[100];
    scanf("%100s", name);
    printf("Hello %s\n", name);
}
