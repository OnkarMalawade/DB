#KNN alogorithm
rm(list = ls())
install.packages("class",dependencies = TRUE)
library(class)
install.packages("caret")
library(caret)

diabetics=read.csv('pima-indians-diabetes.csv')
class(diabetics$mass)

str(diabetics)

diabetics[,'class']=factor(diabetics[,'class'])

str(diabetics)

test = diabetics[501:768,]
train=diabetics[1:500,]

pred_test=knn(train[,-9],test[,-9],train$class,k=2)

pred_test

confusion=table(pred_test,test$class)
confusion
sum(diag(confusion))/nrow(test)

confusionMatrix(pred_test,test$class)

getwd()
