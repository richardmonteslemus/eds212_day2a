##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##                                                                            ~~
##                        PARTIAL DERIVATIVE PRACTICE                       ----
##                                                                            ~~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

library(tidyverse)
# remove all variables in environment 
rm(list = ls())

# defining a function 
eq1 <- function(x){
  3 * x^2 + 4 
}

# create values to evaluate function over 
my_data_range <- data.frame(x = c(1,100))

# plot as a continuous curve over a specific range using 'geom_function()'
ggplot(data = my_data_range, aes(x = x)) + 
  geom_function(fun = eq1)
  

#..................example plotting derivatives..................
# create a new function 
ct <- function(t){
  t^3
} 

# create data frame with range of values 
my_data_range <- data.frame(t = c(-5, 5))

# plot it 
ggplot(data = my_data_range, aes(x = t)) + 
  geom_function(fun = ct)

dc_dt <- D(expr = expression(t^3), name = "t")

dc_dt_fun <- function(t){
  3 * t^2
}

ggplot(data = my_data_range, aes(x = t)) + 
  geom_function(fun = ct, color = "red") +
  geom_function(fun = dc_dt_fun, color = "blue")

#......................Partial Derivatives ......................
# create the expression 
f_xyz <- expression(2 * x * y -3 * x^2 * z^3)

# partial derivative with respect to x 
df_dx <- D(expr = f_xyz, name = "x")
df_dx
df_dz <- D(expr = f_xyz, name = "z") 
df_dz
