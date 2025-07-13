### 1.1 ###
# How would you check whether two vectors are the same if they
# may contain missing (NA) values? (Use of the identical function is 
# considered cheating!)
a <- c(1,2,3,4,5,NA,6,7,8,9)
b <- c(1,2,NA,3,4,5,NA,6,7,8,9)
na.exclude(a) == na.exclude(b)


### 1.2 ###
# If x is a factor with n levels and y is a length n vector, what happens
# if you compute y[x]?
y <- c("spanish", "english", "francaise")
x <- factor(c("ES","EN","FR"))
as.numeric(x)
y[x]
# Answer: It will use the internal factor indexes to extract the data from
# 

### 1.3 ###
# Write the logical expression to use to extract girls between 7 and 14
# years of age in the "juul" data set.
juul[!is.na(juul$age) & juul$age>=7.0 & juul$age<=14.0,]


### 1.4 ###
# What happens if you change the levels of a factor (with levels) and
# give the same value to two or more levels?
# You can't have repeated levels.
x <- factor(c("ES","EN","FR"))
levels(x) <- c("a", "a", "b")
levels(x)

### 1.5 ###
# On p. 27, replicate was used to simulate the distribution of the
# mean of 20 random numbers from the exponential distribution by repeating
# the operation 10 times. How would you do the same thing with "sapply"?
sapply(list(rexp(20),rexp(20),rexp(20),rexp(20),rexp(20),rexp(20),rexp(20),
            rexp(20),rexp(20),rexp(20)),
       mean)