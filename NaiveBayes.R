getwd()

rm(list = ls())
NBdatset<-read.table("new_dataset.csv",header = TRUE,sep = ",")



install.packages("e1071")
library(e1071)

classifier<-naiveBayes(NBdatset[,1:4],NBdatset[,5])
table(predict(classifier,NBdatset[,5],NBdatset[,5],dnn=list('predicted','actual'))
      
classifier$table      

NBdatset[15,-5]<-as.factor(c(Outlook="sunny", Temperatuer="cool",Humidity="High",wind="strong"))

print(NBdatset[15,-5])

result<-predict(classifier,NBdatset[15,-5])

print(result)

