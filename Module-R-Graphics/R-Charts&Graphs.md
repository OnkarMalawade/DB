# R-Graphics

***R-Charts and Graphs***

Plot() function
------
> plot(1,3)
>-----------

> plot(c(1,8),c(3,10))
>-------------------

> plot(c(1,2,3,4,5),c(3,7,8,9,12))
>--------------------------

> x <- c(1,2,3,4,5)

> y <- c(3,5,2,5,11)

> plot(x,y)
> -------------

>plot(1:10)
>-------------

Create line chart in R
========================
> plot(v,type,col,xlab,tlab,main,lwd,lty)

Line graph
-------
 > plot(1:10,type="l")

Line Graph color
------------
> plot(1:10,type="l")

Line Graph Width
---------------
> plot(1:10,type="l",lwd=4)
 
 Line Graph Width and Color
 -----------------
> plot(1:10,type="l",lwd=4,lty=3)
 
 Line Graph Width and Color with data
 -----------------
> plot(x,y,type="l",lwd=4,lty=3)

# Line() function
>lines(x,type="l",lwd=4,lty=3,col="Red")

> lines(y,type="l",lwd=4,lty=3,col="Blue")

 ***Pie Charts***
 ==================
 > pie(x,labels,radius,main,col,clockwise)

> x <- c(10,20,30,40)

> pie(x)
>---------------------

> mLabel <- c("Apples","Grapes","Bananas","Mango")

>pie(x,label=mLabel,main="Fruits")
>------------------------------------

> colors <- c("red","yellow","blue","green")

>pie(x,label=mLabel,main="Fruits",col=colors)
>---------------
 
