# Math operations in R
# Created by: Caitlin Allen Akselrud
# Contact: caitlin.allen_akselrud@noaa.gov
# Created: 2020-12-22
# Modified: 2021-01-18


# operators ---------------------------------------------------------------

# addition:
1+1

# subtraction
10-7

# multiplication:
5*2

# division:
10/2

# exponents or power of:
2^2 
2^4

# built-in functions ------------------------------------------------------

# sum:
sum(2, 10, 5) #easily sums a series of numbers
# # same thing as: 2 + 10 + 5

# absolute value:
abs(-10)

# logarithm (note: the default setting is the natural log)

log(10) #natural log
log(10, base = 10) #log base 10

# exponential function (not to be confused with exponent or power):
exp(2)

# square root:
sqrt(4)

# factorial:
factorial(2)
factorial(10)

# statistical functions ---------------------------------------------------

x <- c(1,2,3,4,5,6,7,8,9,10)
x

# mean:
mean(x)

# median:
median(x)

# variance:
var(x)

# standard deviation:
sd(x)

# center and/or scale x:
scale(x, center = TRUE, scale = FALSE) #centered data: centered on mean, 5.5, and returns deviation from mean for each value
scale(x, center = TRUE, scale = TRUE) #centered and scaled data: dividing the centered values of x by their standard deviations
scale(x, center = FALSE, scale = TRUE) #scaled data: scale by the standard deviations without centering

# quantiles:
quantile(x)

# statistical summary:
summary(x)


# equations ---------------------------------------------------------------

# remember order of operations? PEMDAS!
10/2+5

5+10/2

(5+10)/2

abs((10-5)/2)

# we can get standard deviation using the sd() function, but let's see if we can get the same value on our own:
#  sample variance = sqrt( sum(observation - mean)^2 / (number of observations - 1) )
#  # step 1: numerator
x - mean(x)  #R is smart enough to recognize that x is a series of numbers, and it need to subtract a single number from each value- great!
sum(x - mean(x))^2  #uh-oh! remember PEMDAS.
sum( (x - mean(x))^2 )

# # step 2: denominator:
length(x) # to get the number of observations, use the length() function
length(x) - 1

# # step 3: fill in your equation:
sqrt( sum( (x - mean(x))^2 ) / (length(x)-1) ) #keep track of your parentheses! 

# # step 4: check
sd(x)

# # step 5: CELEBRATE YOUR VICTORY! You just coded an equation in R :)
