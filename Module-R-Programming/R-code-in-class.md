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

> ceiling(4.5)
[1] 5

> floor(4.5)
[1] 4

>  str = "HelloWorld";
> nchar(str)
[1] 10

Checking a String
=================
> str = "HelloWorld"; 
> nchar(str)
[1] 10

> grepl("H",str)
[1] TRUE

> grepl("Hello",str)
[1] TRUE

> grepl("Onkar",str)
[1] FALSE

Formatting
===========

> res1 = format("Onkar",width=8,justify="l")
> res2 = format("Onkar",width=8,justify="c")
> res3 = format("Onkar",width=8,justify="r")

> print(res1)
[1] "Onkar   "

> print(res2)
[1] " Onkar  "

> print(res3)
[1] "   Onkar"

# Use of nsmall Format
==========================

> format(13.7)
[1] "13.7"

> format(13.7,nsmall=3)
[1] "13.700"

> format(13.7,nsmall=2)
[1] "13.70"

> format(13.7,6.07,digits=2)
[1] "14"

> format(13.7,6.07,digits=2,nsmall=1)
[1] "13.7"

# Use of Scientific Format
==========================
> format(2^31-1)
[1] "2147483647"

> format(2^31-1,scientific=TRUE)
[1] "2.147484e+09"

 Use of Text Formatting
 ====================
> text1 = "Onkar"

> toupper(text1)
[1] "ONKAR"

> tolower(text1)
[1] "onkar"
> 

# Creating a Function
======================
>myFunction <- function(){
//create a function with the name myFunction

>   print("Hello World!!!")

>}

 
Call Function
==============
> myFunction()

> Output: Hello World!!!

Arugments
=========
The arguments gives information to the function

Default Parameters
------------------
<p>
 > myFunction <- function(country = "Pune"){<br>
+ paste("I am from ",country)<br>
+ }<br>
> myFunction()<br>
[1] "I am from  Pune"<br>
> myFunction("Talere")<br>
[1] "I am from  Talere"<br>
> myFunction("Bhandarpule")<br>
[1] "I am from  Bhandarpule"<br>
> <br>
</p>

With Parameters
---------------
<p> myFunction <- function(fname){<br>
+ paste(fname,"Onkar")<br>
+ }<br>
 myFunction()<br>
Error in myFunction() : argument "fname" is missing, with no default<br>
 myFunction("Atharav")<br>
[1] "Atharav Onkar"<br>
 myFunction("I am ")<br>
[1] "I am  Onkar"<br>
<br>
</p>

Functions
----------
<p>
 > add <- function(num1 , num2){<br>
+ return (num1 + num2)<br>
+ }<br>
> print(add(10, 20))<br>
[1] 30<br>
> add(10, 20)<br>
[1] 30<br>
> mult <- function(num1){<br>
+ return (num1 * 10)<br>
+ }<br>
> mult(10)<br>
[1] 100<br>
> <br>
</p>

Vectors
-------
<p>
> fruits <- c("banana","apple","orange")<br>
> fruits<br>
[1] "banana" "apple"  "orange"<br>
> 
</p>
 
Sequence
--------
<p>> print(seq(5,9,by=0.4))<br>
 [1] 5.0 5.4 5.8 6.2 6.6 7.0 7.4 7.8 8.2 8.6 9.0<br>
> num = seq(from = 0, to = 100, by = 20)<br>
> num<br>
[1]   0  20  40  60  80 100<br>
> </p>

Using c() function : Vector with String Values
------------------
<p>
 > s <- c('apple','red',5,TRUE)<br>
> s<br>
[1] "apple" "red"   "5"     "TRUE" <br>
> <br>
</p>

Using (:) = Vector with Numeric Values
-------------------------------------
<p>
 > numbers <- 1:10<br>
> numbers<br>
 [1]  1  2  3  4  5  6  7  8  9 10<br>
> numbers <- 1.4 : 5.4<br>
> numbers<br>
[1] 1.4 2.4 3.4 4.4 5.4<br>
> numbers <- 1.4 : 5.6<br>
> numbers<br>
[1] 1.4 2.4 3.4 4.4 5.4<br>
> 
</p>

Vector Length() Fuction
----------------------
<p>
 > fruits <- c("banana","apple","orange")<br>
> length(fruits)<br>
[1] 3<br>
</p>

Sort a Vector using sort() function
-------------
<p>
 > fruits <- c("banana","apple","orange","lemon","grapes")<br>
> sort(fruits)<br>
[1] "apple"  "banana" "grapes" "lemon"  "orange"<br>
> numbers <- 1.4 : 5.6<br>
> sort(numbers)<br>
[1] 1.4 2.4 3.4 4.4 5.4<br>
> 
</p>

Access Vectors Using [index] brackets
-----------------------------
<p>
 > fruits <- c("banana","apple","orange","lemon","grapes")<br>
> fruits[1]<br>
[1] "banana"<br>

</p>

Access Vectors Using [From_index,ToIndex] brackets
-----------------------------
<p>
 > fruits <- c("banana","apple","orange","lemon","grapes")<br>
> fruits[c(1,4)]<br>
[1] "banana" "lemon" <br>
> 
</p>

Change an item in Vector
--------------------
<p>
> fruits[2] <- "Peanuts"<br>
> fruits<br>
[1] "banana"  "Peanuts" "orange"  "lemon"   "grapes" <br>
> 
</p>

Repeat Vectors each value
-----------
<p>
 > repeat_each <- rep(c(1,2,3),each=3) <br>
> repeact_each <br>
Error: object 'repeact_each' not found <br>
> repeat_each <br>
[1] 1 1 1 2 2 2 3 3 3 <br>
</p>

Repeat sequence of the vector
-------------------------
<p>
 > repeat_times <- rep(c(1,2,3),times=3)<br>
> repeat_times<br>
[1] 1 2 3 1 2 3 1 2 3<br>
> <br>
</p>

Repeat Each value Independent
------------------
<p>
 > repeat_indep <- rep(c(1,2,3),times=c(5,3,1))<br>
> repeat_indep <br>
[1] 1 1 1 1 1 2 2 2 3<br>
> 
</p>

Vectors with Arithmatic Operations
-------------------------------
<p>
> v1 <- c(2,4,6,8,7)<br>
> v2 <- c(5,4,6,3,7)<br>
> res = v1 + v2<br>
> res<br>
[1]  7  8 12 11 14<br><br>
> res = v1 - v2<br>
> res<br>
[1] -3  0  0  5  0<br><br>
> res = v1 * v2<br>
> res<br>
[1] 10 16 36 24 49<br><br>
> res = v1 / v2<br>
> res<br>
[1] 0.400000 1.000000 1.000000 2.666667 1.000000<br><br>
</p>
