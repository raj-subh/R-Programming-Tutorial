# 4. Write a program to print the numbers from 1 to 15 in such
# a way that it prints "PUFF" for multiples of 3, it prints
# "CHUG" for multiples of 5, and print "PUFFCHUG" for multiples
# of both else it prints the number.

# Loop through numbers 1 to 15
for (i in 1:15) {
  if (i %% 3 == 0 && i %% 5 == 0) {
    cat("PUFFCHUG\n") # Multiples of both 3 and 5
  } else if (i %% 3 == 0) {
    cat("PUFF\n") # Multiple of 3
  } else if (i %% 5 == 0) {
    cat("CHUG\n") # Multiples of 5
  } else {
    cat(i, "\n") # Other numbers
  }
}
