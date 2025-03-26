# Function to perform arithmetic operations
calculator <- function() {
  cat("Simple Calculator in R\n")

  # Taking user input
  num1 <- as.numeric(readline(prompt = "Enter first number: "))
  num2 <- as.numeric(readline(prompt = "Enter second number: "))

  cat("Choose an operation:\n")
  cat("1. Addition (+)\n")
  cat("2. Subtraction (-)\n")
  cat("3. Multiplication (*)\n")
  cat("4. Division (/)\n")
  cat("5. Modulus (%%)\n")

  choice <- as.integer(readline(prompt = "Enter your choice (1-5): "))

  # Performing operations based on user choice
  result <- switch(choice,
    num1 + num2, # Addition
    num1 - num2, # Subtraction
    num1 * num2, # Multiplication
    if (num2 != 0) num1 / num2 else "Error: Division by zero", # Division
    num1 %% num2 # Modulus
  )

  # Display the result
  cat("Result:", result, "\n")
}

# Call the calculator function
calculator()
