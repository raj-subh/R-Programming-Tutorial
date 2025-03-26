# R provides several functions to import and export data from different file formats like CSV, Excel, JSON, and databases. # nolint

# 1.1 Reading Data
# Reading CSV File

data <- read.csv("data.csv")
print(data)

# Reading Excel File
install.packages("readxl")
library(readxl)
data1 <- read_excel("data.xlsx")
print(data1)

# Reading JSON File
install.packages("jsonlite")
library(jsonlite)

data2 <- fromJSON("data.json")
print(data2)

# 1.2 Writing Data
# Writing CSV File

# Save data as CSV
write.csv(data, "output.csv", row.names = FALSE)

# Writing Excel File
install.packages("writexl")
library(writexl)

# Write to Excel file
write_xlsx(data, "output.xlsx")

# Writing JSON File
# Convert to JSON and write
json_data <- toJSON(data, pretty = TRUE)
write(json_data, file = "output.json")
