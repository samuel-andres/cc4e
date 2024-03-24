/* Read a file

 * FILE is a type

 * `*hand` means is a pointer to a file object
 *
 * fgets returns NULL on EOF
 *
*/

#include <stdio.h>

int main() {
  char line[1000];
  FILE *hand;
  hand = fopen("romeo.txt", "r");

  /**
   * line = ''
   * while (line != NULL) {
   *      line = input()
   *      print(line)
   * }
   */
  while (fgets(line, 1000, hand) != NULL) {
    printf("%s", line);
  }
}
