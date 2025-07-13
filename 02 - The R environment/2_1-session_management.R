#####################
### The workspace ###
#####################
  # All variables in R are stored in a common workspace. To list the variables
  # in the work space you can use the function "ls()". Example:
  a <- 7
  b <- 8
  ls()
  # You can delete variables with "rm()"
  rm(a, b)
  ls()
  # You can clean the entire workspace with "rm(list=ls())"
  rm(list=ls())
  ls()
  
  