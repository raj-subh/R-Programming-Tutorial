# A repeat loop runs indefinitely until break is used.
# Find the first multiple of 7 greater than 50

num <- 51
repeat {
  if (num %% 7 == 0) {
    print(paste("First multiple of 7 greater than 50 is:", num))
    break
  }

  num <- num + 1
}
