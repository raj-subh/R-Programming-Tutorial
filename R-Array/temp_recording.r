# Create a 3D array for temperature recordings
temperature_data <- array(
  c(
    30, 32, 31, 29, 28, # Delhi temperatures (Monday to Friday)
    27, 29, 30, 31, 32, # Mumbai temperatures (Monday to Friday)
    25, 26, 27, 28, 29 # Bangalore temperatures (Monday to Friday)
  ),
  dim = c(3, 5, 1), # 3 cities, 5 days, 1 layer (1 variable: temperature)
  dimnames = list(
    c("Delhi", "Mumbai", "Bangalore"),
    c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday"),
    "Temperature"
  )
)

# Print the complete temperature array
print("Temperature Data for the Week: ")
print(temperature_data)

# Access temperature of Delhi on Monday
delhi_monday_temp <- temperature_data["Delhi", "Monday", ]
print(paste("Temperature in Delhi on Monday:", delhi_monday_temp))

# Calculate the average temperature of each city over the week
avg_temp_cities <- apply(temperature_data, 1, mean)
print(paste("Average temperature of each city over the week: "))
print(avg_temp_cities)

# Find the maximum temperature recorded in each city
max_temp_cities <- apply(temperature_data, 1, max)
print("Maximum temperature recorded in each city: ")
print(max_temp_cities)

# Find the minimum temperature recorded in each city
min_temp_cities <- apply(temperature_data, 1, min)
print("Minimum temperature recorded in each cities:")
print(min_temp_cities)

# Find the average temperature on each day across all cities
avg_temp_days <- apply(temperature_data, 2, mean)
print("Average temperature recorded on each day:")
print(avg_temp_days)

# Find the city with the highest temperature on Wednesday
max_wed_temp <- which.max(temperature_data[, "Wednesday", ])
print(paste("City with highest temperature on Wednesday:", rownames(temperature_data)[max_wed_temp])) # nolint: line_length_linter.
