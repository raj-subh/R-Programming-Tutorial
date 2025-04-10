# 14. Armstrong number check
num <- 153
temp <- num
sum_arm <- 0

while (temp > 0) {
  digit <- temp %% 10
  sum_arm <- sum_arm + digit^3
  temp <- temp %/% 10
}

if (sum_arm == num) {
  print(paste(num, "is an Armstrong number"))
} else {
  print(paste(num, "is NOT an Armstrong number"))
}
