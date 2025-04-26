#include <stdio.h>

int main() {
    float x = 1.0f;
    int count = 0;

    while (x > 0.0f) {
        printf("%d, x: %.20e\n", count, x);
        x /= 2.0f;
        count++;
    }

    printf("count: %d\n", count);
}
