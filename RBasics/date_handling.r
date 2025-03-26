# Employee joining dates
employees <- data.frame(
  Name = c("Amit", "Neha"),
  Joining_Date = as.Date(c("2023-06-10", "2022-12-15"))
)

# Calculate experience in years
employees$Experience <- as.numeric(Sys.Date() - employees$Joining_Date) / 365
print(employees)
