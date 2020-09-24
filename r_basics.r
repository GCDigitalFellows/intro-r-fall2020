### Modified from Thomas Mock- A Gentle Introduction to Tidy Statistics in R ###
### https://rstudio.com/resources/webinars/a-gentle-introduction-to-tidy-statistics-in-r/ ###

# Math
3 + 3
3 - 1
4 / 2
4 * 4


# Logic (boolean expressions)
3 == 3
3 != 3
4 > 3
4 < 3

# Objects + Functions

x <- 3 + 5
x

# This is a vector- a list of items all of the same type (e.g. all numbers or all characters)
y <- c(1, 2, 3, 4, 5)

mean(y)

# Functions under the hood

add_pi <- function(x){
  x + 3.14
}

add_pi(3)

# data frames
View(mtcars)

?mtcars

# Libraries
library(tidyverse)

# dplyr - data cleaning and transformation
# The "%>%" (aka the pipe)
mtcars %>% 
  pull(mpg) %>% 
  mean()

# A more complete overview of these concepts is available here: 
# https://rstudio.cloud/learn/primers/1.2
# You will have an opportunity to practice these concepts after the code-through  


