# Learning R, Lesson 1, Homework 1 
# Created by: 
# Contact: 
# Created: 
# Modified: 


# homework practice -----------------------------------------------------

# 1: create a vector of length = 10, with only even numbers
a <- seq(from = 2, by = 2, length = 10)
a <- seq(from = 2, by = 2, length.out = 10)

# 2: what is the 7th number?
a[7]

# 3: use the assignment operator <- to change the 7th number to 999
a[7] <- 999
a

# 4: create two matrices that are 3x3 containing different values, and assign each matrix a name
x <- matrix(seq(from = 1, to = 9, by = 1), nrow=3, ncol=3)
x

y <- matrix(seq(from = 1, to = 9, by = 1), nrow=3, ncol=3, byrow = TRUE)
y

# 5: subtract the second matrix from the first
x-y


# 6: practice data -----------------------------------------------------------

# look at dataset mtcars
mtcars

# use the help function ? to get more information about this built-in dataset
?mtcars

# subset mpg from the dataset using both $ and [] operators
mtcars$mpg

mtcars[,1] #note that what looks like column 1 is actually row names! mpg is the actual first column

# what is the mean number of gears across all cars?
mean(mtcars$gear)

# what is the variance in mpg across all cars?
var(mtcars$mpg)

# use the summary() function to summarize data from only Mercedes
summary(mtcars[8:14,])




