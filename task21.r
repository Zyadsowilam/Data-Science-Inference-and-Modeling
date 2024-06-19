# Load the 'dslabs' package and data contained in 'heights'
library(dslabs)
data(heights)

# Make a vector of heights from all males in the population
x <- heights %>% filter(sex == "Male") %>%
  .$height

# Calculate the population average. Print this value to the console.

average <- mean(x)
average
# Calculate the population standard deviation. Print this value to the console.
std_dev <- sd(x)
std_dev