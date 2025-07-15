#####################
#### Plot layout ####
#####################
# Draw data with x-y values
x <- runif(50,0,2)
y <- runif(50,0,2)
plot(x, y, main="Main title", sub="subtitle", xlab="x-label", ylab="y-label")
# Adding to the plot text
text(0.6,0.6,"text at (0.6,0.6)")
# Adding to the plot vertical and horizontal lines
abline(h=.6,v=.6)

# Add the numbers -1 to 4 in all the 4 margins of the plot.
for (side in 1:4) mtext(-1:4,side=side,at=.7,line=-1:4)
# Add the label side1, side2... to the 4 margins of the plot.
mtext(paste("side",1:4), side=1:4, line=-1,font=2)

#####################################
#### Building a plot from pieces ####
#####################################
# High-level plots are composed of elements, each of which can also be
# drawn separately. The separate drawing commands often allow finer control
# of the element, so a standard strategy to achieve a given effect is first
# to draw the plot without that element and add the element subsequently.
#
# As an extreme case, the following command will plot absolutely nothing:
plot(x, y, type="n", xlab="", ylab="", axes=F)
# Add elements to the plot:
# Data
points(x,y)
# Axis
axis(1)
axis(2, at=seq(0.2,1.8,0.2))
# Full box
box()
# Add title to the axis and plot
title(main="Main title", sub="subtitle", xlab="x-label", ylab="y-label")

#########################
#### Combining plots ####
#########################
x <- rnorm(100)
hist(x,freq=F)
# We can draw a curve on top of the histogram using the parameter "add=TRUE"
curve(dnorm(x),add=T)

# To add limits to the plot so is not cropped in the plotting area:
x <- rnorm(100)
h <- hist(x,plot=F)
ylim <- range(0, h$density, dnorm(0))
hist(x, freq=F, ylim=ylim)
# We can draw a curve on top of the histogram using the parameter "add=TRUE"
curve(dnorm(x),add=T)
