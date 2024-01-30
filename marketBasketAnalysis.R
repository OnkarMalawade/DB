 install.packages("arules")
 install.packages("arulesViz")
 install.packages("datasets")
 
 library(datasets)
 
 w1 = read.table("G:/MCA-SEM-I-ADBMS/comm.csv")
 
 trans = read.transactions("G:/MCA-SEM-I-ADBMS/comm.csv",format = "basket",sep=",")
 w1
 trans
 
 itemFrequencyPlot(trans,topN=20,type="absolute")
 
 rules <- apriori(data=trans,parameter = list(supp=0.001,conf=0.08),
                  appearance = list(default="lhs",rhs="mobile"),control = list(verbose=F))
 

 rules<-sort(rules,decreasing = TRUE,by="confidence")
 
 inspect(rules[1:10])
 
 plot(rules,method = "graph")
 
 install.packages("arules")
 install.packages("arulesViz")
 install.packages("datasets")
 
 library(datasets)
 
 w1 = read.table("groceries.csv")
 
 trans = read.transactions("groceries.csv",format = "basket",sep=",")
 w1 = read.table("G:/MCA-SEM-I-ADBMS/groceries.xlxs")
 
 w1 = read.table("G:/MCA-SEM-I-ADBMS/groceries.xlsx", header = TRUE)
 
 w1
 trans
 
 itemFrequencyPlot(trans,topN=5,type="absolute")
 
 rules <- apriori(data=trans,parameter = list(supp=0.001,conf=0.08),
                  appearance = list(default="lhs",rhs="groceries"),control = list(verbose=F))
 
 
 rules<-sort(rules,decreasing = TRUE,by="confidence")
 
 inspect(rules[1:10])
 
 plot(rules,method = "graph")