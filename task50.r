# The vector of filtered heights 'x' has already been loaded for you. Calculate the mean.
mu <- mean(x)

# Use the same sampling parameters as in the previous exercise.
set.seed(1)
N <- 15
B <- 10000

# Generate a logical vector 'res' that contains the results of the simulations using the t-distribution
res <- replicate(B, {
  t <- sample(x, N, replace = TRUE)
  interval <- mean(t) + c(-1,1)*qt(0.975, N-1)*sd(t)/sqrt(N)
  between(mu, interval[1], interval[2])
})





# Calculate the proportion of times the simulation produced values within the 95% confidence interval. Print this value to the console.
mean(res)