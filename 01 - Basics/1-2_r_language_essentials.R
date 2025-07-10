###############
### Vectors ###
###############

# String vector
c("Test","Test2","Test")

# Integer vector
c(1,2,3)

# Logical vector
c(T,F,T,F)
# Similar to:
c(TRUE, FALSE, TRUE, FALSE)

### Escape characters with \ ###
cat("What is \"R\"?\n")

### Missing values are represented by NA ###
c("value", NA, "value")

########################
### Creating vectors ###
########################
### c function stands for 'concatenate'
  c(1,2,3,4,5)
  
  # You can also concatenate vectors of more than one element as in
  x <- c(1,2,3)
  y <- c(10, 20, 30)
  c(x, y, 5)
  
  # You can name vector elements for displaying purposes
  x <- c(red="Rojo", blue="Azul", green="Verde")
  x
  
  # Names can be extracted using 'names':
  names(x)
  
  # IMPORTANT!! #
  # All elements of a vector have the same type. If you concatenate vectors of
  # different types, they will be converted to the least “restrictive” type
  c(FALSE, 3)
  c(pi, "abc")
  c(FALSE, "abc")

### seq function stands for 'sequence'. Used for equidistant series of numbers.
  # Example:
  seq(4,9)
  # You can jump with a third parameter
  seq(4,9,2)
  # For a jump of 1, you can also use a:b
  1:10

### rep function stands for 'replicate'. Is used to generate repeated values.
  # Example - Declare a vector 'x':
  x <- c(1,2,3)
  # Repeat it 3 times.
  rep(x, 3)
  
  # Example - Repeat the elements of a vector using a sequence:
  x <- c(1,2,3)
  # Because '1:3' is the sequence '1, 2, 3' that's how many times the elements
  # will replicate. Note: Vector and sequence to replicate must have same length.
  rep(x, 1:3)

  # Other example -  If it is known that the first 10 observations are men and
  # the last 15 are women, you can use:
  rep(1:2, c(10, 15))
  
  # When there are equally many replications of each value, you can use the
  # 'each' argument. Example:
  rep(1:2, each=10)
  # Same result as:
  rep(1:2, c(10, 10))

###########################
### Matrices and arrays ###
###########################
  



