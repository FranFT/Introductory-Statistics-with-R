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
  
  # You can save the workspace into a file with the command "save.image()"
  # (creates a .RData file in rood directory)
  save.image()
  # Use "load()" to load save files into your current workspace.
  
  # You can get the current work directory with:
  getwd()
  # And set a new working directory with "setwd(mydir)"
  
  # To load packages you can use the command
  library(ISwR)
  # To unload packages you can use the command:
  detach("package:ISwR")

#####################
### Built-in data ###
#####################
  # To be able to use a built-in data set you need to load the data frame first.
  # This can be done with the function "data()"
  data("thuesen")
  
  # data() will look for files whose base name matches the given name. It also
  # searches in the sub-directory "data" if it exists.
    # Files with .tab extension are read using read.table.
    # Files with .R file are executed as source files.
  # load_data_test.R is located under "/data" folder. Inside, the variable
  # "my_variable" is created. After using "data()" function, we can reference
  # it in this script.
  data("load_data_test")
  my_variable
  
