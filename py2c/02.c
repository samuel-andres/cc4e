/* Input
 *
 * We need to declare variables beforehand
 *
 * Reads from standard input
 *
 * The `&` is used to indicate that we are passing the
 * variable by reference, so scanf can modify it's value.
 *
 */

#include <stdio.h>

int main() {
  int usf; /* USA Floor */
  int euf; /* EU Floor */
  printf("Enter US Floor\n");
  scanf("%d", &usf);
  euf = usf - 1;
  printf("EU Floor %d\n", euf);
}
