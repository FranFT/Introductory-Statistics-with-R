#▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
#██ ▄▄▀████ ▄▄ █ ▄▄▀█▀▄▄▀█ ▄▄▄█ ▄▄▀█ ▄▄▀█ ▄▀▄ █ ▄▀▄ ██▄██ ▄▄▀█ ▄▄▄██
#██ ▀▀▄████ ▀▀ █ ▀▀▄█ ██ █ █▄▀█ ▀▀▄█ ▀▀ █ █▄█ █ █▄█ ██ ▄█ ██ █ █▄▀██
#██ ██ ████ ████▄█▄▄██▄▄██▄▄▄▄█▄█▄▄█▄██▄█▄███▄█▄███▄█▄▄▄█▄██▄█▄▄▄▄██
#▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
################################################################################
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

#####################################
### Classes and generic functions ###
#####################################
# There are multiple object systems defined in R. They are known as S3, S4, R6
# and the latest, S7.
# You can use S3 for simplicity as you don't need to declare data types.
# S4 is more formal as you need to define data types.
# R6 is inspired in Python and is great for encapsulation.
# s7 is a mix of everything.
# You can use whichever you prefer.
#
# S3 Example ##################################################################
# Define class from list
persona_s3 <- list(nombre = "Fran", edad = 30)
class(persona_s3) <- "persona"

# Define how to print a
print.persona <- function(x) {
  cat("Nombre:", x$nombre, "\nEdad:", x$edad, "\n")
}

# Use
print(persona_s3)

# S4 example ##################################################################
# Define class:
setClass("persona", slots = list(nombre = "character", edad = "numeric"))

# Create object
persona_s4 <- new("persona", nombre = "Fran", edad = 30)

# Define method
setMethod("show", "persona", function(object) {
  cat("Nombre:", object@nombre, "\nEdad:", object@edad, "\n")
})

# Usage
show(persona_s4)

# R6 example ##################################################################
library(R6)

Persona <- R6Class("Persona",
  public = list(
   nombre = NULL,
   edad = NULL,
   
   initialize = function(nombre, edad) {
     self$nombre <- nombre
     self$edad <- edad
   },
   
   print = function() {
     cat("Nombre:", self$nombre, "\nEdad:", self$edad, "\n")
   }
  )
)

# Crear objeto
persona_r6 <- Persona$new("Fran", 30)
persona_r6$print()

# S7 example ##################################################################
library(S7)

# Define class
persona <- new_class("persona", properties = list(
  nombre = class_character,
  edad   = class_numeric
))

# Create object
fran <- persona(nombre = "Fran", edad = 30)

# Access object attributes
fran@nombre  # "Fran"
fran@edad    # 30

# Modify object property
fran@edad <- 31

# Define generic method
saludar <- new_generic("saludar", "x")

# Define class method for generic method
method(saludar, persona) <- function(x) {
  paste("Hola,", x@nombre, "¡tienes", x@edad, "años!")
}

# Usage
saludar(fran)






