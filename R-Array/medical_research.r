# Create a 3D array for patient statistics (Heart Rate & Blood Pressure)
patient_data <- array(
  c(
    # Patient 1 (Heart Rate & Blood Pressure over 5 days)
    72, 74, 76, 78, 75,  120, 122, 121, 124, 123,
    # Patient 2 (Heart Rate & Blood Pressure over 5 days)
    80, 82, 85, 83, 81,  130, 128, 132, 135, 133,
    # Patient 3 (Heart Rate & Blood Pressure over 5 days)
    65, 67, 69, 66, 68,  115, 118, 117, 119, 116
  ),
  dim = c(3, 5, 2), # 3 patients, 5 days, 2 vitals (HR & BP)
  dimnames = list(
    c("Patient 1", "Patient 2", "Patient 3"), # Patients
    c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday"), # Days
    c("Heart Rate", "Blood Pressure") # Vitals
  )
)

# Print the complete patient dataset
print("Patient Statistics Over 5 Days:")
print(patient_data)

# Access Blood Pressure of Patient 2 on Wednesday
bp_patient2_wednesday <- patient_data["Patient 2", "Wednesday", "Blood Pressure"] # nolint
print(paste("Patient 2's Blood Pressure on Wednesday:", bp_patient2_wednesday))

# Calculate the average heart rate of each patient over 5 days
avg_hr_patients <- apply(patient_data[, , "Heart Rate"], 1, mean)
print("Average Heart Rate of Each Patient Over the Week:")
print(avg_hr_patients)

# Find the maximum blood pressure recorded for each patient
max_bp_patients <- apply(patient_data[, , "Blood Pressure"], 1, max)
print("Maximum Blood Pressure Recorded for Each Patient:")
print(max_bp_patients)

# Find the average blood pressure recorded on each day across all patients
avg_bp_days <- apply(patient_data[, , "Blood Pressure"], 2, mean)
print("Average Blood Pressure on Each Day Across All Patients:")
print(avg_bp_days)

# Find the patient with the highest heart rate on Friday
max_hr_friday <- which.max(patient_data[, "Friday", "Heart Rate"])
print(paste("Patient with highest Heart Rate on Friday:", rownames(patient_data)[max_hr_friday])) # nolint
