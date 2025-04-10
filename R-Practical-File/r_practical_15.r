# 15. Read and write CSV file
# Make sure you have a CSV file or create one for test
# write.csv(df, "student_data.csv", row.names = FALSE) # nolint

df_import <- read.csv("Cleaned_Customers.csv")
print(head(df_import))

write.csv(df_import, "exported_data.csv", row.names = FALSE)
