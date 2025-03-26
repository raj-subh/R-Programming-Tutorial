# 1. Write a R program to perform following operations on Vector:
# min(), max(), mean(), sqrt(), length(), sum(), prod(), sort()
# (in ascending and descendingorder), rev(), addition/
# subtraction/multiplication/division of two vectors.

# Define a numeric vector
vec <- c(10, 20, 5, 15, 30)

# Vector operations
cat("Vector:", vec, "\n")
cat("Minimum Value:", min(vec), "\n")
cat("Maximum Value:", max(vec), "\n")
cat("Mean (Average):", mean(vec), "\n")
cat("Square Root of Elements:", sqrt(vec), "\n")
cat("Length of Vector:", length(vec), "\n")
cat("Sum of Elements:", sum(vec), "\n")
cat("Product of Elements:", prod(vec), "\n")
cat("Sorted (Ascending):", sort(vec), "\n")
cat("Sorted (Descending):", sort(vec, decreasing = TRUE), "\n")
cat("Reversed Vector:", rev(vec), "\n")

# Define another vector of the same length
vec1 <- c(2, 4, 1, 3, 5)

# Arithmetic Operations
cat("Vector Addition:", vec + vec1, "\n")
cat("Vector Subtraction:", vec - vec1, "\n")
cat("Vector Multiplication:", vec * vec1, "\n")
cat("Vector Division:", vec / vec1, "\n")
