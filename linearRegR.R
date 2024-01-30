data <- read.csv("Advertising.csv")
data

View(data)

tv<-data$TV
tv

sales<-data$Sales
sales

plot(tv,sales)
plot(tv,sales,pch=16,cex=1,col='blue',main = 'TV vs Sales',xlab = 'TV',ylab = 'Sales')

model<-lm(sales~tv)
summary(model)

attributes(model)

coefficients(model)

coef(model)

abline(model)

radio<-data$Radio
radio

plot(radio,sales)
plot(radio,sales,pch=16,cex=1,col='blue',main = 'TV vs Sales',xlab = 'TV',ylab = 'Sales')

model<-lm(sales~radio)
summary(model)

attributes(model)

coefficients(model)

coef(model)

abline(model)