/* Line input
 * the regex [^\n] match any char that is not a newline
 */

#include <stdio.h>

int main() {
  char line[1000];
  printf("Enter line\n");
  scanf("%[^\n]1000s", line);
  printf("Line: %s\n", line);
}
