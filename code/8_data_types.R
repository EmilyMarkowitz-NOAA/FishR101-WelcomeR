# Understanding data types and information storage in R
# Created by: Caitlin Allen Akselrud
# Contact: caitlin.allen_akselrud@noaa.gov
# Created: 2020-12-22
# Modified: 2021-01-18


# Assign ------------------------------------------------------------------

# the '<-' sign means you are evaluating the right side of the equation, and assigning value to a name in R, for example: 
#   a <- b + c  means that a equals b plus c
#   in a regular equation, such as a = b + c, you CAN use the '=' sign 

# PLEASE DON'T!
# here's why: as we move farther into R, you will learn about functions, such as:
#   z <- f(x, y) where you can set the parameter values within the parentheses, such as:
#   z <- f(x = 3, y = 4)
# You SHOULD use the equals '=' sign INSIDE a function like this (between the parentheses)
# You SHOULD not use the '=' sign to assign the z value here.

# Just because you can do it, doesn't mean you should.
# This is a best practice.

# Shortcut: Use Alt + - to generate '<-' 

# Variable ----------------------------------------------------------------

# assign a single value

a <- 3
a
b <- 4
b

# note that CASE matters! 'a' does not equal 'A'
A

# Vector ------------------------------------------------------------------

# assign a string of values

# the 'c()' command stands for concatenate: it puts a string of values together
d <- c(1,2,3,4)
d

# create a sequence of values
e <- seq(from = 1, to = 10, by = 1)
e

# all odd numbers:
f <- seq(from = 1, to = 10, by = 2)
f

# ten total numbers
g <- seq(from = 1, by = 2, length.out = 10)
g

# sequence options: using the '?' opens the help panel and shows your options
?seq()

# you can access an element in the vector using brackets []
g[2]

# Matrix ------------------------------------------------------------------

h <- matrix(c(1,2,3,4), nrow=2, ncol=2)
h

i <- matrix(c(1,2,3,4), nrow=2, ncol=2, byrow = TRUE)
i

# you can name your matrix columns and rows
colnames(i) <-  c("red","blue")
rownames(i) <- c("a","b")
i

# you can access and element in the matrix using brackets: [row, column]
i[2,2]

# you can access a whole row or column by specifying what you do want:
i[2,] #this gives you everying in row 2
i[,2] 

# Array -------------------------------------------------------------------

# an array can be a matrix
j <- array(data = g, dim = c(2,5))
j

# it can also have a third dimension
k <- array(data = g, dim = c(2,5,3))
k

# you can name your array components
l <- array(data = g, dim = c(2,5,3), dimnames = list(c("a", "b"), 
                                                   c("red", "orange","yellow","green","blue"),
                                                   c("page1", "page2","page3")))
l

# in fact, it can have as many dimensions as you want... 
array(data = g, dim = c(2,5,3,2))

# you can access an element in the array using brackets: [dimension 1, dimension 2, dimension 3, etc.]
l[2,5,3]
l[,,3] #only page 3

# access several colors on page 3 using the colon : operator:
l[,2:5,3]



# List --------------------------------------------------------------------

# a list can contain elements of different types.

m <- list(name="Mike", company="NOAA-NMFS", division = 1)
m

# lists are similar to arrays, but can store varying amounts of information on each "page" or list component

n <- list(name="Mike", company="NOAA-NMFS", division = 1, projects = c("fish", "benthic_inverts", "jellies"))
n

# you can access different list elements using the dollar sign $
n$name
n$company
n$projects

# you can access an element within a list using the dollar sign $ and brackets []
n$projects[2]

# Data Frame --------------------------------------------------------------

# a data frame is used for storing data tables. It is a list of vectors of equal length.

name <- c("Mike", "Lucy", "John") 
age <- c(20, 25, 30) 
student <- c(TRUE, FALSE, TRUE) 
df <-  data.frame(name, age, student)  
df

# there are different ways of accessing the same thing!
df$name #all names
df[,1]  #all names

df$student[3] #status of the 3rd student
df[3,3]       #status of the 3rd student  
