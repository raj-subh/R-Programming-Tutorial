# 11. Matrix manipulations
mat <- matrix(1:16, nrow = 4, byrow = TRUE)

# i. Extract rows where any column value > 3
sub_mat <- mat[apply(mat, 1, function(row) any(row > 3)), ]
print("Sub-matrix where any column > 3:")
print(sub_mat)

# ii. Convert to 1D array
array_1d <- as.vector(mat)
print("1D Array:")
print(array_1d)

# iii. Convert to list of column vectors
list_cols <- split(mat, col(mat))
print("List of column vectors:")
print(list_cols)
