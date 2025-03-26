# Define a class using a list (Classes and Objects)
Employee <- function(id, name, age, salary, join_date) { # nolint
  emp <- list(ID = id, Name = name, Age = age, Salary = salary, JoinDate = as.Date(join_date))
  class(emp) <- "Employee"
  return(emp)
}

# Creating employee objects
emp1 <- Employee(101, "Alice", 30, 50000, "2018-06-15")
emp2 <- Employee(102, "Bob", 25, 45000, "2020-09-10")
emp3 <- Employee(103, "Charlie", 40, 70000, "2015-04-20")

# Storing employees in a list
employees <- list(emp1, emp2, emp3)

# 1️⃣ **Subsetting**: Extract employees earning above 50,000
high_salary_employees <- Filter(function(emp) emp$Salary > 50000, employees)
print("Employees earning above 50,000:")
print(high_salary_employees)

# 2️⃣ **Vectorized Operations**: Give a 10% salary hike to all employees
salaries <- sapply(employees, function(emp) emp$Salary * 1.1) # Vectorized operation
print("Updated Salaries after 10% increment:")
print(salaries)

# 3️⃣ **Control Structures**: Categorize employees based on salary
for (emp in employees) {
  category <- if (emp$Salary < 50000) {
    "Junior"
  } else if (emp$Salary >= 50000 & emp$Salary < 70000) {
    "Mid-Level"
  } else {
    "Senior"
  }
  print(paste(emp$Name, "is a", category, "Employee"))
}

# 4️⃣ **Date and Time Operations**: Find experience of employees in years
today <- Sys.Date()
experience_years <- sapply(employees, function(emp) as.numeric(difftime(today, emp$JoinDate, units = "weeks")) / 52)
print("Employee Experience (in years):")
print(experience_years)

# 5️⃣ **Scoping Rule Demonstration**
bonus <- 5000 # Global Variable

calculate_salary <- function(emp) {
  bonus <- 2000 # Local Variable
  return(emp$Salary + bonus)
}

adjusted_salaries <- sapply(employees, calculate_salary)
print("Salaries after bonus (using local scope):")
print(adjusted_salaries)

print("Global bonus value remains unchanged:")
print(bonus)

# 6️⃣ **Sleep Function**: Simulating system delay
print("Processing Payroll... Please Wait")
Sys.sleep(2) # Sleep for 2 seconds
print("Payroll Process Completed!")
