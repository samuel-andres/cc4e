/* Exercise RS-7
 * Write a C program to determine the minimum and maximum
 * of a sequence of integer numbers on input, terminated by
 * the string "done". The patterns for input and output
 * should match the following Python application.
 * Make sure that the input lines can be at least 1000
 * characters. Use a middle-tested while loop, gets() and atoi()
 * to mimic the Python code below. See the lecture for guidance.
 *
 * maxval = None
 * minval = None
 * while True:
 *   line = input()
 *   line = line.strip()
 *   if line == "done" : break
 *   ival = int(line)
 *   if ( maxval is None or ival > maxval) :
 *     maxval = ival
 *   if ( minval is None or ival < minval) :
 *     minval = ival
 *  print('Maximum', maxval)
 *  print('Minimum', minval)
 *
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main() {
    int keepItGoing = 1;
    int first = 1;
    int max, min;
    int val;
    char line[1000];

    while (fgets(line, 1000, stdin) != NULL) {
        val = atoi(line);

        if (strcmp(line, "done\n") == 0) {
            keepItGoing = 0;
            break;
        }

        if (first || val > max) {
            max = val;
        }
        if (first || val < min) {
            min = val;
        }
        first = 0;
    }

    printf("Maximum %d\n", max);
    printf("Minimum %d\n", min);
}