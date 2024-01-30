data <- read.csv("employees.csv")
View(data)

library(openxlsx)

dimensions <- dim(data)
cat("Dimensions of the dataset:", dimensions[1], "rows and", dimensions[2], "columns\n")

clerk_data <- subset(data, designation == "clerk")

high_salary_data <- subset(data, salary > 55000)
write.xlsx(high_salary_data, "high_salary_data.xlsx")

summary_data <- summary(your_dataset)
cat("Summary of the dataset:\n", summary_data)

# Load the required library
library(readr)
install.packages("openxlsx")
# 1. Display the content
employees <- read.csv("employees.csv")
print(employees)

# 2. Find the dimensions of the data
dimensions <- dim(employees)
cat("Dimensions of the dataset:", dimensions[1], "rows and", dimensions[2], "columns\n")

# 3. Get all the people with designation "clerk"
clerks <- subset(employees, JOB_ID == "PU_CLERK")
print("People with designation 'clerk':")
View(clerks)

# 4. Get people whose salary is greater than 55,000 and write the output to a new Excel file
high_salary_employees <- subset(employees, SALARY > 3000)
write.xlsx(high_salary_employees, "high_salary_employees.xlsx", row.names = FALSE)

# 5. Summarize the dataset
summary_data <- summary(employees)
print("Summary of the dataset:")
print(summary_data)



# Age and speed data for day 1
age1 <- c(5, 7, 8, 7, 2, 2, 9, 4, 11, 12, 9, 6)
speed1 <- c(99, 86, 87, 88, 111, 103, 87, 94, 78, 77, 85, 86)

# Age and speed data for day 2
age2 <- c(2, 2, 8, 1, 15, 8, 12, 9, 7, 3, 11, 4, 7, 14, 12)
speed2 <- c(100, 105, 84, 105, 90, 99, 90, 95, 94, 100, 79, 112, 91, 80, 85)

# Create a data frame
data <- data.frame(
  Day = rep(c("Day 1", "Day 2"), each = length(age1)),
  Age = c(age1, age2),
  Speed = c(speed1, speed2)
)

# Draw a scatterplot
plot(
  Speed ~ Age,          # y-axis ~ x-axis
  data = data,          # Data frame
  col = as.factor(data$Day),  # Color points by Day
  pch = 16,             # Use solid circles as points
  main = "Scatterplot of Age and Speed on Day 1 and Day 2",
  xlab = "Age",
  ylab = "Speed"
)

# Add a legend
legend("topright", legend = levels(as.factor(data$Day)), col = 1:2, pch = 16, title = "Day")



# Age and speed data for day 1
age1 <- c(5, 7, 8, 7, 2, 2, 9, 4, 11, 12, 9, 6)
speed1 <- c(99, 86, 87, 88, 111, 103, 87, 94, 78, 77, 85, 86)

# Age and speed data for day 2
age2 <- c(2, 2, 8, 1, 15, 8, 12, 9, 7, 3, 11, 4, 7, 14, 12)
speed2 <- c(100, 105, 84, 105, 90, 99, 90, 95, 94, 100, 79, 112, 91, 80, 85)

# Make sure the vectors have the same length
min_length <- min(length(age1), length(speed1), length(age2), length(speed2))

# Create a data frame
data <- data.frame(
  Day = rep(c("Day 1", "Day 2"), each = min_length),
  Age = c(age1[1:min_length], age2[1:min_length]),
  Speed = c(speed1[1:min_length], speed2[1:min_length])
)

# Draw a scatterplot
plot(
  Speed ~ Age,          # y-axis ~ x-axis
  data = data,          # Data frame
  col = as.factor(data$Day),  # Color points by Day
  pch = 16,             # Use solid circles as points
  main = "Scatterplot of Age and Speed on Day 1 and Day 2",
  xlab = "Age",
  ylab = "Speed"
)

# Add a legend
legend("topright", legend = levels(as.factor(data$Day)), col = 1:2, pch = 16, title = "Day")




# Create a vector with numerical values from 1 to 10
my_vector <- 1:10

# Create a plot with a blue-colored dotted line of width 2
plot(
  my_vector,                # x-axis values
  type = "l",               # "l" indicates a line plot
  col = "blue",             # Line color is blue
  lty = 2,                  # Dotted line style
  lwd = 2,                  # Line width is 2
  main = "Blue Dotted Line Plot",
  xlab = "Index",
  ylab = "Values"
)



input_data <- read_excel("input.xlsx")
print("Content of the dataset:")
view(input_data)




# 1. Display the content
input_data <- read.xlsx("input.xlsx")
print("Content of the dataset:")
view(input_data)

# 2. Find the dimensions of the data
dimensions <- dim(input_data)
cat("Dimensions of the dataset:", dimensions[1], "rows and", dimensions[2], "columns\n")

# 3. Get all the people working in IT department
it_department <- subset(input_data, dept == "IT")
print("People working in IT department:")
view(it_department)

# 4. Get people who joined on or after 2014 and write the output to a new Excel file
joined_after_2014 <- subset(input_data, start_date >= 2014)
write.xlsx(joined_after_2014, "joined_after_2014_output.xlsx", rowNames = FALSE)

# 5. Summarize the dataset
summary_data <- summary(input_data)
print("Summary of the dataset:")
print(summary_data)