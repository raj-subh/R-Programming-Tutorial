# 📌 Sample R Code: DataFrame Operations
library(dplyr)

# Create a sample DataFrame with missing values
df <- data.frame(
  ID = 1:5,
  Name = c("Alice", "Bob", NA, "David", "Eve"),
  Age = c(25, 30, NA, 40, 35),
  Salary = c(50000, NA, 60000, 70000, NA),
  stringsAsFactors = FALSE
)

# Print the Original DataFrame
print("Original DataFrame: ")
print(df)

# Find the missing values in the DataFrame
missing_values <- is.na(df)
print("Missing values in DataFrame (True means missing): ")
print(missing_values)

# Count missing values in each column
missing_count <- colSums(is.na(df))
print("Count of missing values in each column: ")
print(missing_count)

# Replacing missing values in "Name" column with "Unknown"
df$Name[is.na(df$Name)] <- "Unknown"

# Print the updated DataFrame
print("Updated DataFrame after handling Name missing values")
print(df)

# Replace NA in Age and Salary with Mean of respective columns
# na.rm = TRUE ensures that NA values are ignored when calculating the mean.
df$Age[is.na(df$Age)] <- mean(df$Age, na.rm = TRUE)
df$Salary[is.na(df$Salary)] <- mean(df$Salary, na.rm = TRUE)

# Print the updated DataFrame
print("Update DateFrame after handling Age & Salary missing values: ")
print(df)
