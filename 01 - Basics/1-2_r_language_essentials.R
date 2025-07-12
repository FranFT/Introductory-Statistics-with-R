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
### Changing array dimensions to become a matrix.
  # Define an array
  x <- 1:12
  x
  # Change array dimension to be 3 rows and 4 columns. Notice is column-major
  # meaning, the elements from the first column follows the numbers on the second
  # and so on.
  dim(x) <- c(3,4)
  x

### Defining a matrix
  # The following command creates a matrix. The byrow=T parameters switch the
  # matrix creation to be row-major, meaning, the numbers from the first row
  # follows the numbers on the second column and so on.
  matrix(1:12, nrow=3, byrow=T)
  # If we remove it, the matrix will be column-major again.
  matrix(1:12, nrow=3)
  
  # To rename row names:
  # Notice that LETTERS is a R-built-in variable that contains the capital letters.
  # Similar to that: letters (lower letters), month.name and month.abb.
  x <- matrix(1:12, nrow=3, byrow=T)
  rownames(x) <- LETTERS[1:3]
  x
  
  # To perform the transpose of any matrix
  t(x)
  
  # You can join vectors together, columnwise or rowwise using 'cbind' and 'rbind'
  # into a matrix
  cbind(A=1:4, B=5:8, C=9:12)
  rbind(A=1:4,B=5:8,C=9:12)

###############
### Factors ###
###############
# It is common in statistical data to have categorical variables, indicating
# some subdivision of data. This is a data structure that (among other things)
# makes it possible to assign meaningful names to the categories.
  pain <- c(0, 3, 2, 2, 1)
  fpain <- factor(pain, levels=0:3)
  levels(fpain) <- c("none", "mild", "medium", "severe")
  
  # Extract the numerical coding as numbers. Notice that the original input
  # coding in terms of numbers 0–3 has disappeared; the internal representation
  # of a factor always uses numbers starting at 1.
  as.numeric(fpain)
  # Extract the categories as strings.
  levels(fpain)

##############
### Lists ###
#############
  # sometimes is useful to combine a collection of objects into a larger
  # composite object. This can be done using lists. Example:
  # Define 2 arrays
  a <- c(5260,5470,5640,6180,6390)
  b <- c(3910,4220,3885,5160,5645)
  # Combine them into a list:
  mylist <- list(before=a, after=b)
  mylist
  # Extract a single component from the list
  mylist$before
  
