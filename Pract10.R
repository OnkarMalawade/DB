library(stats)
install.packages("ggplot2")
install.packages("ggfortify")

library(stats)
library(dplyr)
library(ggplot2)
library(ggfortify)

View(iris)
mydata <- select(iris,c(1,2,3,4))
View(iris)

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

KM = kmeans(mydata,3)

autoplot(KM,mydata,frame=TRUE)

KM$centers
