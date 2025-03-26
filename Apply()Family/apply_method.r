# Data Frame with student marks
marks <- data.frame(
  Math = c(80, 90, 85),
  Science = c(75, 88, 92),
  English = c(78, 84, 89)
)

# Calculate column-wise mean using apply()
subject_avg <- apply(marks, 2, mean)
print(subject_avg)
