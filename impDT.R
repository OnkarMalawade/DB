data <- read.csv("input.csv")
data

data$dept

data <- read.csv("data.csv")
data

View(data)

nrow(data)

dim(data)

names(data)

rownames(data)

dfdata = select(data,'Country','Age','Purchased')
dfdata

dfdata1 = filter(dfdata,Country=='France')
View(dfdata1)

dfdata2 = filter(dfdata,Country=='France',Age<=40)
View(dfdata2)

is.na(NA)

sum(is.na(data))

sapply(data,is.numeric)

sum(data$Age,na.rm = TRUE)

View(data)

data$Age <- ifelse(is.na(data$Age),ave(data$Age,FUN = function(x) mean(x,na.rm=TRUE)),data$Age)

View(data)

data

data$Salary <- ifelse(is.na(data$Salary),ave(data$Salary,FUN = function(x) mean(x,na.rm=TRUE)),data$Salary)

View(data)

data

# Create a variable named carName and assign the value Volvo to it
carName <- "Volvo"

# Print the value of carName
print(carName)

# Create a variable named txt and assign a value to it
txt <- "World!"

# Combine the text "Hello" with the txt variable
result <- paste("Hello", txt)

# Print the result
print(result)

x <- 10.5
myVar <- 30

# Check the data types
class_x <- class(x)
class_myVar <- class(myVar)

# Print the results
cat("Data type of x:", class_x, "\n")
cat("Data type of myVar:", class_myVar, "\n")

# Find the square root of 100
result <- sqrt(100)

# Print the result
print(result)

# Define the str variable
str <- "Finolex Academy of Management and Technology"

# Find the number of characters in the str variable
num_characters <- nchar(str)

# Print the result
print(num_characters)

# Create a sequence of numbers from 20 to 50
sequence_20_to_50 <- seq(20, 50)

# Find the mean of numbers from 20 to 60
mean_20_to_60 <- mean(seq(20, 60))

# Calculate the sum of numbers from 51 to 91
sum_51_to_91 <- sum(seq(51, 91))

# Print the results
cat("Sequence from 20 to 50:", sequence_20_to_50, "\n")
cat("Mean of numbers from 20 to 60:", mean_20_to_60, "\n")
cat("Sum of numbers from 51 to 91:", sum_51_to_91, "\n")


# Create vectors with numeric, character, and logical data
numeric_vector <- c(1.5, 2.0, 3.7, 4.2)
character_vector <- c("apple", "banana", "orange", "grape")
logical_vector <- c(TRUE, FALSE, TRUE, FALSE)

# Display the content of the vectors
cat("Numeric Vector:", numeric_vector, "\n")
cat("Character Vector:", character_vector, "\n")
cat("Logical Vector:", logical_vector, "\n")

# Display the types of the vectors
cat("Type of Numeric Vector:", class(numeric_vector), "\n")
cat("Type of Character Vector:", class(character_vector), "\n")
cat("Type of Logical Vector:", class(logical_vector), "\n")


# Create vectors
name <- c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas')
score <- c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19)
attempts <- c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1)
qualify <- c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')

# Create a data frame
data_frame <- data.frame(Name = name, Score = score, Attempts = attempts, Qualify = qualify)

# Display the data frame
print(data_frame)

score_column <- data_frame$Score
print(score_column)

# Create a vector of month names
months <- c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")

# Create an ordered factor
ordered_months <- factor(months, ordered = TRUE)

# Display the ordered factor
print(ordered_months)

# Display the levels and their order
cat("Levels and their order:", levels(ordered_months), "\n")
