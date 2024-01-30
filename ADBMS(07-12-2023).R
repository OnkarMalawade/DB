getwd()

install.packages("arules")
install.packages("arulesViz")
install.packages("datasets")

library(arules)
library(arulesViz)
library(datasets)

w1=read.table("C:/Users/student/Documents/FYMCA_59/comm.csv")

itemFrequencyPlot(trans,topN=20,type="absolute")

rules<-apriori(data = trans,parameter = list(supp=0.001,conf=0.08),
               appearance = list(default="lhs",rhs="mobile"),control = list(verbose=F))

rules<-sort(rules,decreasing = TRUE, by="confidence")

 inspect(rules[1:10])
 
plot(rules)


# K-Meanse Algorithm

install.packages("stats")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("ggfortify")

library(stats)
library(dplyr)
library(ggplot2)
library(ggfortify)

View(iris)
mydata<-select(iris,c(1,2,3,4))
View(mydata)

wssplot <- function(data, nc=15, seed=1234){
  wss <- (nrow(data)-1)*sum(apply(data,2,var))
  for (i in 2:nc){
    set.seed(seed)
    wss[i] <- sum(kmeans(data, centers=i)$withinss)}
  plot(1:nc, wss, type="b", xlab="Number of Clusters",
       ylab="Within groups sum of squares")
  wss
}

wssplot(mydata)

KM=kmeans(mydata,3)

autoplot(KM,mydata,frame=TRUE)

KM$centers

