transport_mode <- function(mode) {
  result <- switch(mode,
    "car" = "You chose car. Drive safely!",
    "bike" = "You chose Bike. Wear a helmet!",
    "bus" = "You chose Bus. Have a comfortable ride!",
    "walk" = "You chose to Walk. Stay fit!",
    "Invalid choice"
  )
  return(result)
}

# Test the function
print(transport_mode("bike"))
print(transport_mode("train"))
