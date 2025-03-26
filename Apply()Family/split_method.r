# Creating a Data Frame
customers <- data.frame(
  Name = c("Amit", "Pooja", "Rahul", "Neha"),
  Gender = c("Male", "Female", "Male", "Female"),
  Purchase = c(1200, 800, 1500, 700)
)

# Split data by Gender
split_data <- split(customers, customers$Gender)
print(split_data)
