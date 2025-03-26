# 3. Write a program to check leap year in R.

# Function to check if a year is a leap year
is_leap_year <- function(year) {
  if ((year %% 4 == 0 && year %% 100 != 0) || (year %% 400 == 0)) {
    return(TRUE) # Leap Year
  } else {
    return(FALSE) # Not a Leap Year
  }
}

# Checking if the year is a leap year
if (is_leap_year(2024)) {
  cat(2024, "is a Leap Year.\n")
} else {
  cat(2024, "is NOT a Leap Year.\n")
}
