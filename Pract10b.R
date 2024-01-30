df <- USArrests

df

df<-na.omit(df)

d<-scale(df)

head(d)

d<-dist(d,method="euclidean")
hc<-hclust(d,method = "complete")

plot(hc)
plot(hc,cex=0.5,hang=-1)