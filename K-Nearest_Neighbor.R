getwd()

# K-Nearest Neighbor

rm(list = ls())
install.packages("class")
library(class)

install.packages("caret")
library(caret)

install.packages("ggplot2")
library(ggplot2)

daibetes=read.csv("pima-indians-diabetes.csv")

#class() to know the datatype of the
class(daibetes$mass)

#str() - structure of the data
str(daibetes)

daibetes[,'class']=factor(daibetes[,'class'])

str(daibetes)

mean(daibetes$age)

summary(daibetes)

train=daibetes[1:500,]

test=daibetes[501:768,]

pred_test=knn(train[,-9],test[,-9],train$class,k=2)

pred_test

confusion=table(pred_test,test$class)
confusion

sum(diag(confusion))/nrow(test)

confusionMatrix(pred_test,test$class)


