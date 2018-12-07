// Compilation Instructions
// gcc bmi.c && ./a.out

#include <stdio.h>
#include <stdlib.h>

#define SIZE 10

int main() {

  char weight_c[SIZE], height_c[SIZE];
  double weight, height, bmi;

  printf("Enter you weight: ");
  fgets(weight_c, SIZE, stdin);
  weight = atof(weight_c);

  printf("Enter you height: ");
  fgets(height_c, SIZE, stdin);
  height = atof(height_c);

  bmi = weight / (height * height);

  printf("weight is %2f, height is %2f\n", weight, height);
  printf("You bmi is %2f\n", bmi);
}
