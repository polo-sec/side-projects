#include <stdio.h>
int main(void) {
for (int i = 1; i <= 100; ++i) {
printf("%d ", i);
if (i % 3 == 0) printf("fizz");
if (i % 5 == 0) printf("buzz");
puts(" ");
}}
