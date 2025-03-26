# Function to calculate discount
calculate_discount <- function(bill_amount) {
    if (bill_amount > 500) {
        discount <- bill_amount * 0.10
    } else if (bill_amount >= 200) {
        discount <- bill_amount * 0.05
    } else {
        discount <- 0
    }

    final_amount <- bill_amount - discount
    return(final_amount)
}

# Example Usage
bill_amount <- 550
cat("Final Amount to Pay:", calculate_discount(bill_amount), "\n")
