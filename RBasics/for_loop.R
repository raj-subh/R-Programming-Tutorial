principal <- 1000 # Initial investment
rate <- 5 # Annual interest rate in percentage
years <- 5

for (year in 1:years) { # nolint
  interest <- (principal * rate) / 100 # nolint
  principal <- principal + interest

  cat("Year:", year, "- Amount:", principal, "\n")
}
