# Scenario:
# Stores: 3 (Store A, Store B, Store C)

# Products: 4 (Laptop, Mobile, Tablet, Headphones)

# Months: 2 (January, February)

sales_data <- array(
  c(
    500, 400, 300, 250, # Store A - January
    600, 450, 320, 260, # Store B - January
    550, 420, 310, 255, # Store C - January

    520, 410, 310, 260, # Store A - February
    610, 460, 330, 270, # Store B - February
    560, 430, 320, 265 # Store C - February
  ),
  dim = c(3, 4, 2),
  dimnames = list(
    c("Patna Store", "Delhi Store", "Gurugaon Store"),
    c("Laptop", "Mobile", "Tablet", "Headphones"),
    c("January", "February")
  )
)

print(sales_data)

# Operations on Arrays
# Accessing elements (Sales of Store A in January for Laptop):
sales_data["Patna Store", "Laptop", "January"]

# Summing all sales in January:
sum(sales_data[, , "January"])

# Finding the average sales of Mobiles in February:
mean(sales_data[, "Mobile", "February"])
