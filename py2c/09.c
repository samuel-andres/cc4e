/* Guessing
 *
 * else if is an idiom, what comes after an if or else
 * statement is another statement or a block of statements
 * so we can not-indent the if block after the else to
 * emulate what python does with elif that is part of
 * the language
 *
 */

#include <stdio.h>

int main() {
  int guess;
  while (scanf("%d", &guess) != EOF) {
    if (guess == 42) {
      printf("Nice work!\n");
      break;
    }

    else if (guess < 42)
      printf("Too low - guess again\n");
    else
      printf("Too high - guess again\n");
  }
}