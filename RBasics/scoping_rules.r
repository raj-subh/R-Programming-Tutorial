company_employees <- 100 # Global variable

count_department <- function() {
  department_employees <- 20 # Local variable
  cat("Department Employees:", department_employees, "\n")
}

cat("Total Employees in Company:", company_employees, "\n")
count_department()
