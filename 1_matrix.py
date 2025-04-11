A = [[1, 0, 3.14, 2.72],
     [2.72, 1, 0, 3.14],
     [1, 1, 1, 1],
     [1, 2, 3, 4]]
B = [[1, 1, 0, 3.14],
     [0, 1, 3.14, 2.72],
     [0, 1, 1, 0],
     [4, 3, 2, 1]]

dim_r_A = len(A)
dim_c_A = len(A[0])
dim_r_B = len(B)
dim_c_B = len(B[0])
multi = []

for row in range(dim_r_A):
    temp = []
    for col_B in range(dim_c_B):
        elm = 0
        for col_A in range(dim_c_A):
            elm += (A[row][col_A] * B[col_A][col_B])
        temp.append(elm)
    multi.append(temp)

print(multi)
