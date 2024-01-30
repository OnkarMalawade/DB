# Load required libraries
library(dplyr)

# Task 1: Extract specific columns into dataframe "employee_subset"
employee <- read.csv("employees.csv")
employee_subset <- employee[, c("Name", "Age", "Salary", "isLocal")]

# Task 2: Rename specific columns in "employee_subset" dataframe
colnames(employee_subset) <- c("EmployeeName", "EmployeeAge", "EmployeeSalary", "IsLocal")

# Task 3: Check for missing values in "employee_subset"
missing_values <- colSums(is.na(employee_subset))
cat("Missing values in employee_subset:\n")
print(missing_values)

# Task 4: Calculate the mean of Age and Salary columns
mean_age <- mean(employee_subset$EmployeeAge, na.rm = TRUE)
mean_salary <- mean(employee_subset$EmployeeSalary, na.rm = TRUE)
cat("\nMean Age:", mean_age, "\n")
cat("Mean Salary:", mean_salary, "\n")

# Task 5: Replace missing values with the mean of the respective column
employee_subset$EmployeeAge[is.na(employee_subset$EmployeeAge)] <- mean_age
employee_subset$EmployeeSalary[is.na(employee_subset$EmployeeSalary)] <- mean_salary

# Display the updated dataframe
cat("\nUpdated employee_subset dataframe:\n")
print(employee_subset)
