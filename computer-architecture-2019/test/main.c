#include <stdio.h>
#include <time.h>

#define SIZE 100

double A[SIZE][SIZE];
double B[SIZE][SIZE];
double C[SIZE][SIZE];

int main() {
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            A[i][j] = 1.0;
            B[i][j] = 1.0;
            C[i][j] = 0.0;
        }
    }

    const clock_t start = clock();

    for (int i = 0; i < SIZE; i++) {
        for (int k = 0; k < SIZE; k++) {
            const double a = A[i][k];
            for (int j = 0; j < SIZE; j++) {
                C[i][j] += a * B[k][j];
            }
        }
    }

    const clock_t end = clock();
    const double time = (double) (end - start) / CLOCKS_PER_SEC;
    printf("time: %lf[ms]\n", time * 1000.0);

    // for (int i = 0; i < SIZE; i++) {
    //     for (int j = 0; j < SIZE; j++) {
    //         printf("C[%d][%d] = %lf\n", i, j, C[i][j]);
    //     }
    // }
}
