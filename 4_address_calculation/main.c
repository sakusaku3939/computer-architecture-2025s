#include <stdio.h>

#define SIZE 3

double A[SIZE][SIZE];
double B[SIZE][SIZE];
double C[SIZE][SIZE];

int main() {
    printf("Size of double: %lu bytes\n", sizeof(double));
    printf("Size of matrix: %lu bytes\n\n", sizeof(A));

    printf("Base addresses:\n");
    printf("A: %p\n", (void *) A);
    printf("B: %p\n", (void *) B);
    printf("C: %p\n\n", (void *) C);

    printf("Addresses of A:\n");
    printf("A[0][0]: %p\n", (void *) &A[0][0]);
    printf("A[0][1]: %p\n", (void *) &A[0][1]);
    printf("A[0][%d]: %p\n", SIZE - 1, (void *) &A[0][SIZE - 1]);
    printf("A[1][0]: %p\n", (void *) &A[1][0]);
    printf("A[%d][0]: %p\n", SIZE - 1, (void *) &A[SIZE - 1][0]);
    printf("A[%d][1]: %p\n", SIZE - 1, (void *) &A[SIZE - 1][1]);
    printf("A[%d][%d]: %p\n\n", SIZE - 1, SIZE - 1, (void *) &A[SIZE - 1][SIZE - 1]);

    printf("Addresses of B:\n");
    printf("B[0][0]: %p\n", (void *) &B[0][0]);
    printf("B[0][1]: %p\n", (void *) &B[0][1]);
    printf("B[0][%d]: %p\n", SIZE - 1, (void *) &B[0][SIZE - 1]);
    printf("B[1][0]: %p\n", (void *) &B[1][0]);
    printf("B[%d][0]: %p\n", SIZE - 1, (void *) &B[SIZE - 1][0]);
    printf("B[%d][1]: %p\n", SIZE - 1, (void *) &B[SIZE - 1][1]);
    printf("B[%d][%d]: %p\n\n", SIZE - 1, SIZE - 1, (void *) &B[SIZE - 1][SIZE - 1]);

    printf("Addresses of C:\n");
    printf("C[0][0]: %p\n", (void *) &C[0][0]);
    printf("C[0][1]: %p\n", (void *) &C[0][1]);
    printf("C[0][%d]: %p\n", SIZE - 1, (void *) &C[0][SIZE - 1]);
    printf("C[1][0]: %p\n", (void *) &C[1][0]);
    printf("C[%d][0]: %p\n", SIZE - 1, (void *) &C[SIZE - 1][0]);
    printf("C[%d][1]: %p\n", SIZE - 1, (void *) &C[SIZE - 1][1]);
    printf("C[%d][%d]: %p\n", SIZE - 1, SIZE - 1, (void *) &C[SIZE - 1][SIZE - 1]);

    return 0;
}
