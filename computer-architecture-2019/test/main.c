#include <stdio.h>

#define M 4
#define N 4

int main() {
    double A[M][N] = {
        {1, 0, 3.14, 2.72},
        {2.72, 1, 0, 3.14},
        {1, 1, 1, 1},
        {1, 2, 3, 4}
    };
    double B[M][N] = {
        {1, 1, 0, 3.14},
        {0, 1, 3.14, 2.72},
        {0, 1, 1, 0},
        {4, 3, 2, 1}
    };
    double C[N][N] = {};

    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            for (int k = 0; k < N; k++) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }

    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            printf("C[%d][%d] = %lf\n", i, j, C[i][j]);
        }
    }
}
