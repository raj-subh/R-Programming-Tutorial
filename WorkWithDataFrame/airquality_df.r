# This dataset contains daily air quality measurements in New
# York from May to September 1973 and includes missing values,
# making it ideal for practicing data cleaning techniques.

# Load the airquality dataset
data("airquality")

# Display the first few rows
head(airquality)

# Check for missing values
colSums(is.na(airquality))

# Remove rows with any missing values
airquality_clean <- na.omit(airquality)

# Replacing Missing Values with Column Mean
# Rplace NA in Ozone and Solar.R with column mean
airquality$Ozone[is.na(airquality$Ozone)] <- mean(airquality$Ozone, na.rm = TRUE) # nolint: line_length_linter.

airquality$Solar.R[is.na(airquality$Solar.R)] <- mean(airquality$Solar.R, na.rm = TRUE) # nolint: line_length_linter.

# Print the updated DataFrame
head(airquality)
