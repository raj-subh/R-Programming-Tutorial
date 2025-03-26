# 2. Write a R program to create a list containing a vector,
# a matrix and a list and perform
# following operations:
# i. Update the elements in the list.
# ii. Merge two lists into one list.
# iii. Count number of objects in a given list.

# Create a list containg a vector, a matrix, and another list
my_list <- list(
  my_vector = c(1, 2, 3, 4, 5),
  my_matrix = matrix(1:9, nrow = 3, ncol = 3),
  my_sublist = list(a = "Hello", b = "World")
)

# Print original list
cat("Original List:\n")
print(my_list)

# i. Update elements in the list
my_list$my_vector[2] <- 10 # Update second element of vector
my_list$my_matrix[1, 1] <- 99 # Update first element of matrix
my_list$my_sublist$a <- "Hi" # Update sublist element

cat("\nUpdated List\n")
print(my_list)

# ii. Merge two  lists into one list
new_list <- list(
  extra_vector = c(10, 20, 30),
  extra_matrix = matrix(11:19, nrow = 3, ncol = 3)
)

merge_list <- c(my_list, new_list) # Merge lists

cat("\nMerged List:\n")
print(merge_list)

# iii. Count the number of objects in the given list
num_objects <- length(my_list)
cat("\nNumber of objects in my_list:", num_objects, "\n")
