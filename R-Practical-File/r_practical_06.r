# 6. Create two lists to store information of two Students like Roll
# No, Name, Age, Subjects. Perform operations to print two lists,
# add new component Gender to two students, Access RollNo and
# subjects of Student1, Access RollNo and subjects of Student2.
# Merge Subjects into new List Subjects_All.

# Creating two student lists
student1 <- list(
  Roll_No = 101, Name = "Subhash", Age = 21,
  Subjects = c("Math", "Physics", "Computer Science")
)

student2 <- list(
  Roll_No = 102, Name = "Amit", Age = 22,
  Subjects = c("Biology", "Chemistry", "Physics")
)

# Printing the student lists
cat("Student 1 Details:\n")
print(student1)
cat("\nStudent 2 Details:\n")
print(student2)

# Adding a new component 'Gender' to both students
student1$Gender <- "Male"
student2$Gender <- "Male"

# Printing updated lists
cat("\nUpdated Student 1 Details:\n")
print(student1)
cat("\nUpdated Student 2 Details:\n")
print(student2)

# Accessing Roll_No and Subjects of Student1
cat("\nStudent 1 Roll_No:", student1$Roll_No, "
\nSubjects:", student1$Subjects, "\n")

# Accessing Roll_No and Subjects of Student2
cat("\nStudent 2 Roll_No:", student2$Roll_No, "
\nSubjects:", student2$Subjects, "\n")

# Merging Subjects of both students into a new list
subjects_all <- unique(c(student1$Subjects, student2$Subjects))

# Printing the merged subjects list
cat("\nMerged Subjects List:\n")
print(subjects_all)
