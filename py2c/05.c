/* Line input (safe)
 *
 * fgets(x, y, z) puts upto y chars looking for a newline
 * onto x reading from z (file).
 *
 * In c there are 3 basic streams:
 *      -   stdin; read up to EOF (keyboard)
 *      -   stdout; where printf goes (screen)
 *      -   stderror; send errors to the output (screen)
 *
 */

#include <stdio.h>

int main() {
  char line[1000];
  printf("Enter line\n");
  fgets(line, 1000, stdin);
  printf("Line: %s\n", line);
}
