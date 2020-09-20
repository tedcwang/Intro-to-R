# This is a comment


## BASICS
# Working Directory
# Create a working directory on your computer that you will reference to everytime
# Set the working directory to your "RFolder"
getwd() # gives the current working directory
setwd("/Users/Theo/Desktop/rfolder") # sets a new working directory. Set this to your "RFolder"

# The help(command) will give info on the command
help(solve)
help(c)
# 'help' is the function/command, '()' holds any arguments necessary to carry out that command

# objects() and rm()
objects() # displays all objects currently stored in R
rm() # removes all 

# Variables
x <- # assigns a variable name to a command or dataset, etc.
x <- 1
y <- 2
x + y

# Line syntax
# Compare:
a <- 1 + 2
+ 3
# versus
a <- 1 + 2 + 
  3
# If you want to split your code over several lines, let R know that your statement isn't finished when it switches
# to the next line

# Arithmetic
# +,-,*,/,^ are all basic operators
# log, exp, sin, cost, tan, sqrt are also operator commands
# max/min() give the max and min
# range() gives the range of the argument
# length() gives the length of the argument
# sum() gives the sum of the elements in the argument
# prod() gives the product of the elements
# mean() gives the mean (same as sum()/length())
# var() gives sample variance

# Sequences 
1:30 # gives a sequence of numbers from 1 to 30 and is = to c(1,2...29,30)
2*1:15 # gives c(2,4,...,28,30)
seq(1,30) # is equal to 1:30
seq(-5,5,by=.2) # gives numbers from -5 to 5 in intervals of 0.2

# Lists
# Lists are objects consisting of ordered collection of components
Lst <- list(name="Fred", wife="Mary", no.children=3, child.ages=c(4,7,9))
# Component names are: name$component_name
# Ex: Lst$name is same as Lst[[1]] and gives "Fred"

# Packages
# Use 'install.packages()' and 'library()' to install and load packages
install.packages("tidyverse")
library(tidyverse)

# Reading data
read.table() # reads an entire data frame
# Ex: HousePrice <- read.table("houses.data")
# scores read.csv("scores.csv", header=T) # header=T means that there is a header in the data

# Some Statistical Commands
boxplot() # creates a boxplot of the data
hist() # gives a histogram of the data (hist(x, main="Boxplot of ..."))
log10() # gives the logistical model of the data
rz.transform() # also does the same thing if log10() doesn't work
plot() # plots the data (plot(y~x,main="..."))
lm() # creates a fit for linear models, like with regressions
abline() # plots the regression line

# jpeg
jpeg() # exports a graphic of the file into the "RFolder"


## DATA TYPES
# Character
# Create an object with a single character value
char <- "character data"
# Print object to console
char
# Get type of object
typeof(char)
# Get class of object
class(char)
# Get structure of object
str(char)
# Ask if object is character
is.character(char)
# Number of characters?
nchar(char)

# Numeric
# Create an object with a single numeric value
num <- 1.0

# Logical
# Create an object with a single logical value
lo <- TRUE
# Logical operators
temp <- x > 13 # temp will have values FALSE when x is not fulfilled and vice versa


## DATA STRUCTURES
# Vectors
# Vectors are data structures featuring a collection of elements
x <- c(10.4, 5.6, 3.1, 6.4, 21.7) # is a vector with function command c()
# c(10.4, 5.6, 3.1, 6.4, 21.7) -> x works the same way
y <- c(x, 0, x)
# Vector of strings
a.char.vector <- c("A", "a", "aye?")
a.char.vector
# Vector of mixed element types
a.vector <- c("A", TRUE, 1)
a.vector

# Matrix
# An extension of vectors; basically a vector with two dimensions: rows and columns
m <- matrix(nrow = 2, ncol = 2)
m
# Create, populate by column
m <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
m
# Create, populate by row
m2 <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3, byrow = TRUE)
m2

# Array
# Arrays can store data in more than two dimensions
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2))
print(result)

# List
# A "generic" vector; the elements of a list can by of any type of R object, even lists containing further lists
# Create list from multiple vectors and objects
numbers <- 1:5
characters <- c("a", "b", "c")
lo <- TRUE
ex.list <- list(numbers, characters, lo)
ex.list

# Data Frame
# What you will most likely experience when doing data science. It is atwo dimensional object, similar to a matrix, 
# but different columns can contain different modes of data (numeric, character, logical, and so on)
# Create from set of vectors with same length
patientID <- c(1, 2, 3, 4, 5)
age <- c(25, 34, 28, 52, 35)
diabetes <- c("Type1", "Type2", "Type1", "Type1", "Type2")
status <- c("Poor", "Improved", "Excellent", "Poor", "Poor")
patientdata <- data.frame(patientID, age, diabetes, status)
patientdata