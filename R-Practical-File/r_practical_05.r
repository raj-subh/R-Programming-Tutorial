# 5. Write a program to search a number in a list. If the number
# is found then print its position else print -1.

# Function to search for a number in a list
search_number <- function(my_list, target) {
  positions <- which(unlist(my_list) == target) # Find positions

  if (length(positions) > 0) {
    cat("Number found at position(s):", positions, "\n")
  } else {
    cat("-1\n") # If number is not found
  }
}


# Exampe list
my_list <- list(10, 20, 30, 40, 50, 60)

# Search for a number (change the value to test)
search_number(my_list, 30) # Searching for 30
search_number(my_list, 100) # Searcing for 100 (not in the list)
