#################
### Functions ###
#################
# Example:

hist.with.normal <- function(x, xlab=deparse(substitute(x)),...)
{
  h <- hist(x, plot=F, ...)
  s <- sd(x)
  m <- mean(x)
  ylim <- range(0,h$density,dnorm(0,sd=s))
  hist(x, freq=F, ylim=ylim, xlab=xlab, ...)
  curve(dnorm(x,m,s), add=T)
}

# "xlab" has a default value if its not provided
# The "..." in the header acts as a special argument that collects the rest of 
# arguments provided to the functions. They are passed in the two calls to hist.

####################
### Flow control ###
####################
# R is a true programming language that allows conditional execution and 
# looping constructs
y <- 12345
x <- y/2
while (abs(x*x-y) > 1e-10) x <- (x + y/x)/2
x
# A variation for this could be:
x <- y/2
repeat{
  x <- (x + y/x)/2
  if (abs(x*x-y) < 1e-10) break
}
x
# The most common used loop is the loop For
x <- seq(0, 1,.05)
plot(x, x, ylab="y", type="l")
for ( j in 2:8 ) lines(x, x^j)