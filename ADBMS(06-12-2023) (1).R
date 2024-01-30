getw()

myd1<-read.csv("mydata.csv")
myd1


#importing database

data<-read.csv("mydata.csv")
data

apply(data,2,function(x) sum(is.na(x)))

data$Age <- ifelse(is.na(data$Age),ave(data$Age, FUN = function(x) mean(x, na.rm = TRUE)), data$Age)
data$Age

data$Salary
data$salary <- ifelse(is.na(data$Salary),ave(data$Salary, FUN = function(x) mean(x, na.rm = TRUE)), data$Salary)
data$salary

data$Country = factor(data$Country, 
                      levels = c('France','Spain','Germany'), 
                      labels = c(1.0, 2.0 , 3.0 ))
data$Country

data$Purchased = factor(data$Purchased,levels = c('No', 'Yes'),labels = c(0, 1))
data$Purchased

install.packages("CaTools")

library(caTools)

set.seed(123)

head(data)

View(data)

split = sample.split(data$Purchased, SplitRatio = 0.8)

training_set = subset(data, split == TRUE)

test_set = subset(data, split == FALSE)

training_set

test_set

training_set[,3]= scale(training_set[,3])

test_set[,3]= scale(test_set[,3])


#Regression
data<-read.csv("Advertising.csv")
View(data)

tv<-data$TV
tv

sales<-data$Sales
sales

plot(tv,sales)
plot(tv,sales,pch=16,cex=1,col='blue',main='TV vs Sales',xlab = 'TV',ylab = 'Sales')

model<-lm(sales~tv)

summary(model)

attributes(model)

coefficients(model)

coef(model)

abline(model)

