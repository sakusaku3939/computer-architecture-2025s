#define SIZE 3

double A[SIZE][SIZE] = {
    {1, 1, 1},
    {1, 1, 1},
    {1, 1, 1}
};
double B[SIZE][SIZE] = {
    {1, 1, 1},
    {1, 1, 1},
    {1, 1, 1}
};
double C[SIZE][SIZE];

int main() {
    for (int i = 0; i < SIZE; i++) {
        for (int k = 0; k < SIZE; k++) {
            for (int j = 0; j < SIZE; j++) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
}
