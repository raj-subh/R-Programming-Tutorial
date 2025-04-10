# 16. Drawing graphs in R
x <- 1:10
y <- x^2

# Line graph
plot(x, y, type = "l", col = "blue", main = "Line Graph")

# Bar chart
barplot(y, names.arg = x, col = "green", main = "Bar Chart")

# Histogram
hist(y, col = "orange", main = "Histogram")

# Pie chart
slices <- c(10, 20, 30, 40)
labels <- c("A", "B", "C", "D")
pie(slices, labels = labels, main = "Pie Chart")
