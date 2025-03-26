# ==============================================
# 1. Basic Syntax: Variables, Data Types, Operators
# ==============================================
emp_names <- c("Alice", "Bob", "Charlie", "David", "Eva") # Character Vector
emp_salaries <- c(50000, 60000, 55000, 70000, 65000) # Numeric Vector
emp_experience <- c(2, 5, 3, 7, 4) # Integer Vector
emp_department <- factor(c("HR", "IT", "Finance", "IT", "HR")) # Factor

# Basic Arithmetic Operations
avg_salary <- sum(emp_salaries) / length(emp_salaries)
cat("Average Salary:", avg_salary, "\n") # Output: 60000

# ==============================================
# 2. Control Statements: if-else, switch
# ==============================================
evaluate_performance <- function(exp) {
  if (exp < 3) {
    return("Junior Level")
  } else if (exp < 6) {
    return("Mid Level")
  } else {
    return("Senior Level")
  }
}

# Test function
cat("Performance Level:", evaluate_performance(5), "\n") # Output: Mid Level

# Using Switch for Department Benefits
get_department_bonus <- function(dept) {
  bonus <- switch(dept,
    "HR" = 5000,
    "IT" = 7000,
    "Finance" = 6000,
    "Unknown Department"
  )
  return(bonus)
}

cat("Bonus for IT:", get_department_bonus("IT"), "\n") # Output: 7000

# ==============================================
# 3. Loops: for, while, repeat
# ==============================================
# Using a loop to increase salaries by 10%
for (i in seq_along(emp_salaries)) {
  emp_salaries[i] <- emp_salaries[i] * 1.1
}
print(emp_salaries)

# While loop: Find first employee earning above 75000
i <- 1
while (i <= length(emp_salaries)) {
  if (emp_salaries[i] > 75000) {
    cat("First employee earning above 75000:", emp_names[i], "\n")
    break
  }
  i <- i + 1
}

# Repeat loop: Find the first multiple of 9 greater than 50
num <- 51
repeat {
  if (num %% 9 == 0) {
    cat("First multiple of 9 greater than 50:", num, "\n")
    break
  }
  num <- num + 1
}

# ==============================================
# 4. Vectors, Lists, Matrices, Data Frames
# ==============================================
# Creating a List
emp_list <- list(
  Names = emp_names,
  Salaries = emp_salaries,
  Experience = emp_experience
)
print(emp_list)

# Creating a Matrix
salary_matrix <- matrix(emp_salaries, nrow = 5, byrow = TRUE)
print(salary_matrix)

# Creating a Data Frame
emp_data <- data.frame(
  Name = emp_names,
  Salary = emp_salaries,
  Experience = emp_experience,
  Department = emp_department
)
print(emp_data)

# Subsetting Data: Employees with salary above 60,000
high_earners <- emp_data[emp_data$Salary > 60000, ]
print(high_earners)

# ==============================================
# 5. Apply Functions: apply, lapply, sapply
# ==============================================
# Apply function to get max salary from each column in matrix
apply(salary_matrix, 2, max)

# lapply to get the length of each element in a list
lapply(emp_list, length)

# sapply to get mean salaries
sapply(emp_list[2], mean)

# ==============================================
# 6. Date and Time Handling
# ==============================================
current_date <- Sys.Date()
cat("Today's Date:", current_date, "\n")

current_time <- Sys.time()
cat("Current Time:", current_time, "\n")

# Convert character to Date format
joining_dates <- c("2022-01-10", "2021-07-15", "2023-03-05")
joining_dates <- as.Date(joining_dates, format = "%Y-%m-%d")
print(joining_dates)

# ==============================================
# 7. File Handling: Writing and Reading CSV
# ==============================================
# Writing data frame to CSV
write.csv(emp_data, "employee_data.csv", row.names = FALSE)

# Reading CSV file
read_data <- read.csv("employee_data.csv")
print(read_data)

# ==============================================
# 8. Basic Visualization: Bar Plot
# ==============================================
barplot(emp_salaries,
  names.arg = emp_names, col = "blue",
  main = "Employee Salaries", xlab = "Employees", ylab = "Salaries"
)
