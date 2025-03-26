# Simple Calculator in R

cat("Enter first number: ")
num1 <- as.numeric(readLines("stdin", n = 1))

cat("Enter second number: ")
num2 <- as.numeric(readLines("stdin", n = 1))

cat("\nChoose an operation:\n")
cat("1. Addition (+)\n2. Subtraction (-)\n3. Multiplication (*)\n4. Division (/)\n5. Modulus (%%)\n") # nolint
cat("Enter your choice (1-5): ")
choice <- as.integer(readLines("stdin", n = 1))

# Perform the selected operation
result <- switch(choice,
  num1 + num2,
  num1 - num2,
  num1 * num2,
  num1 / num2,
  num1 %% num2,
  "Invalid choice"
)

cat("Result:", result, "\n")
