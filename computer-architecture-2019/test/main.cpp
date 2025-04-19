#include <omp.h>
#include <iostream>
using namespace std;

#define M 4
#define N 4

int main() {
    double matA[M][N] = {
        {1, 0, 3.14, 2.72},
        {2.72, 1, 0, 3.14},
        {1, 1, 1, 1},
        {1, 2, 3, 4}
    };
    double matB[M][N] = {
        {1, 1, 0, 3.14},
        {0, 1, 3.14, 2.72},
        {0, 1, 1, 0},
        {4, 3, 2, 1}
    };
    #pragma omp parallel
    {
        int ID = omp_get_thread_num();
        cout << ID << '\n';
    }
}
