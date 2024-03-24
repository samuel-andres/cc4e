/* String input
 *
 * strings are not strings
 *
 * strings are character arrays
 *
 * we need to define its length beforehand
 *
 * scanf("%xs") means read the first x characters
 *
 */

#include <stdio.h>

int main() {
  char name[100];
  printf("Enter  name\n");
  scanf("%100s", name);
  printf("Hello %s\n", name);
}
