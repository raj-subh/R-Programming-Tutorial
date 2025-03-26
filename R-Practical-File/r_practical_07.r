# 7. Write a user defined function to generate Fibonacci series
# using while loop.

# Function to generate Fibonacci series using while loop
fibonacci_series <- function(n) {
  # Initialize the first two numbers
  a <- 0
  b <- 1
  fib_seq <- c(a, b)

  # Counter for the loop
  count <- 2

  # Generate Fibonacci sequence using while loop
  while (count < n) {
    next_term <- a + b # Next Fibonacci number
    fib_seq <- c(fib_seq, next_term) # Append to the sequence
    a <- b # Update values
    b <- next_term
    count <- count + 1 # Increment counter
  }

  # Return the Fibonacci seqeunce
  return(fib_seq)
}

# Input: Number of terms
# n <- as.integer(readline(prompt = "Enter the number of terms: "))
n <- 10

# Check for valid input
if (n <= 0) {
  cat("Please enter a positive integer,\n")
} else {
  #  Call function and print Fibonacci series
  cat("Fibonacci Series:\n")
  print(fibonacci_series(n))
}
