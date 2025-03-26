# 10.Write a R program to create two matrix and add, subtract,
# multiply and divide the matrices.

# Create two matrices (3x3)
matrix1 <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3)
matrix2 <- matrix(c(9, 8, 7, 6, 5, 4, 3, 2, 1), nrow = 3, ncol = 3)

# Display the matrices
print("Matrix 1:")
print(matrix1)

print("Matrix 2:")
print(matrix2)

# Matrix Addition
addition <- matrix1 + matrix2
print("Addition of matrices:")
print(addition)

# Matrix Subtraction
subtraction <- matrix1 - matrix2
print("Subtraction of matrices:")
print(subtraction)

# Matrix Multiplication (element-wise)
multiplication <- matrix1 * matrix2
print("Element-wise Multiplication of matrices:")
print(multiplication)

# Matrix Division (element-wise)
division <- matrix1 / matrix2
print("Element-wise Division of matrices:")
print(division)
