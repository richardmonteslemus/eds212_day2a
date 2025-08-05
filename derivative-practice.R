##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##                            Derivative practice                           ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


#................Practice using the function D().................

# create an expression 
my_expression <- expression(5 * x^2)

# find derivative of the expression with respect to x 
my_derivative <- D(expr = my_expression, name = "x")

# evaluate derivative at x = 2.8 
x <- 2.8 
# evaluate! 

eval(my_derivative)

#....................another example with D()....................
# find derivative with respect to x 
my_derivative <- D(expr = expression(3.1 * x^4 - 28 * x), name = "x")
my_derivative

# create and store a function 
fx <- expression(x^2)

# find the derivative with respect to x 
df_dx <- D(expr = fx, name = "x")
df_dx 

# My turn 

my_derivative2 <- D(expr = expression(2*z^3 - 10.5*z^2 + 4.1), name = "z")
my_derivative2


dt_dy <- D(expr = expression((2*y^3 + 1)^4 - 8*y^3), name = "y")
dt_dy

#example 
gz = expression(2*z^3 - 10.5 * z^2 +4.1)
dg_gz <- D(expr = gz, name = "z")


# find the slope of T(y) at a range of values
y <- seq(from = -0.4, to = 2.0, by = 0.1) 

#evaluate the slope of T(y) at each of those values 
eval(dt_dy)


# Git Practice

# usethis::use_git()
# used to commit to a local repo? 

## plotting example 
library(ggplot2)
library(palmerpenguins)

ggplot(data = penguins, aes(x = body_mass_g, y = flipper_length_mm)) + 
  geom_point(aes(color = species)) + 
  scale_color_manual(values = c("darkorange", "purple", "cyan4")) + 
  labs(x = "Body mass (g)", 
       y = "Flipper length (mm)",
       title = "Palmer Penguins size measurements",
       subtitle = "Palmer archipelago, Antartica (2007 - 2009)", 
       caption= "Collected by Dr. Kristen Gorman") + 
  facet_wrap(~island) + 
  theme_minimal()




