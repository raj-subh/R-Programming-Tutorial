# Scenario: Cleaning Customer Data for Analysis
# A company collects customer data, but some entries are missing.The goal is to:
library(dplyr)

# Load customer data
customer_data <- read.csv("D:/RProgramming/DataHandlinginR/Customers.csv")

# Display the structure of the dataset
str(customer_data)

# Summary statistics
summary(customer_data)

# Checking for missing values
sum(is.na(customer_data)) # Total missing values
colSums(is.na(customer_data)) # Missing values per column

# Handling missing values - FIll NA in 'Profession' with 'Unknown'
customer_data$Profession[is.na(customer_data$Profession)] <- "Unknown"

# Generating a sequence from 1 to 100 with steps of 5
sequence_data <- seq(1, 100, 5)
print(sequence_data)

# Creating a random sample of 10 customers IDs
sampled_customers <- sample(customer_data$CustomerID, 10)
print(sampled_customers)

# Saving cleaned data to a new CSV file
write.csv(customer_data, "Cleaned_Customers.csv", row.names = FALSE)
