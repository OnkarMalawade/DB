# Import Data
***Note: Enter getwd() function to get working directory***

Reading a CSV FILE
------------------
> data <- read.csv("input.csv")

> print(data)
  id     name salary start_date       dept
1  1     Rick 623.30 2012-01-01         IT
2  2      Dan 515.20 2013-09-23 Operations
3  3 Michelle 611.00 2014-11-15         IT
4  4     Ryan 729.00 2014-05-11         HR
5  5     Gary 843.25 2015-03-27    Finance
6  6     Nina 578.00 2013-05-21         IT
7  7    Simon 632.80 2013-07-30 Operations
8  8     Guru 722.50 2014-06-17    Finance

> dim(data)
8 5

> names(data)
[1] "id"         "name"       "salary"    
[4] "start_date" "dept"

> rownames(data)
 "1" "2" "3" "4" "5" "6" "7" "8"
