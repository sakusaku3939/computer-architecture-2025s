#include <stdio.h>

int main() {
    double x = 1.0;
    int count = 0;

    while (x != (x * 2.0)) {
        printf("%d, x: %.20e\n", count, x);
        x *= 2.0;
        count++;
    }

    printf("count: %d\n", count);
}
