#include <stdio.h>

int main() {
  int first = 1;
  int val, max, min;

  while (scanf("%d", &val) != EOF) {
    if (first || val > max)
      max = val;
    if (first || val < min)
      min = val;
    first = 0;
  }

  printf("Max %d\n", max);
  printf("Min %d\n", min);
}
