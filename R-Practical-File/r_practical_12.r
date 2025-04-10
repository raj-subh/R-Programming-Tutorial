# 12. Data frame structure and summary
df <- data.frame(Name = c("John", "Amy", "Steve"), Age = c(23, 30, 28), Score = c(85, 90, 88)) # nolint
str(df)

summary(df)
sapply(df, class)
