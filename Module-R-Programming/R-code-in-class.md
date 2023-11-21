Code:
=====
***R Console codes***
=====================

Print Operation
===============
> print("Hello World")
[1] "Hello World"
> 5+5+0+98
[1] 108
> 32+87
[1] 119

Add values to variables
=======================
> name <- "Onkar Malawade"
> name
[1] "Onkar Malawade"

> var1 = 1234567
> var1
[1] 1234567

> var2 <- 987654
> var2
 987654

> res <- var1 + var2
> res
 2222221

> res <- var1 
> res
 1234567

> res <- var1 * var2 + var1
> res
 1.219326e+12

> res = res / 100000098
> res
 12193.25

String Concatenation
====================
> text1 = "Hello!!!"
> text2 = "Onkar!!!"
> paste(text1,text2)
 "Hello!!! Onkar!!!"
> paste(text1,text2,"Malawade")
 "Hello!!! Onkar!!! Malawade"

For Loop
========
 for (x in 1 : 10){
 print(x)
 }

[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9
[1] 10

Class or we can say Datatypes of given variables from the class() method:-
=============================================================
> x<-10.5
> class(x)
[1] "numeric"
> x<-1000L
> class(x)
[1] "integer"
> x <- 9i + 3
> class(x)
[1] "complex"
> x <- "R is Exists"
> class(x)
[1] "character"
> x <- TRUE
> class(x)
[1] "logical"


Mathematical functions
=================
> max(10,23,32)
[1] 32
> min(12,1,3)
[1] 1
> abs(-4.12)
[1] 4.12
> sqrt(25)
[1] 5
> 

