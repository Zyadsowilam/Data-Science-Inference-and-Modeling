# Define `p` as a proportion of Democratic voters to simulate
p <- 0.45
# Define `N` as the sample size
N <- 100
# Use the `set.seed` function to make sure your answer matches the expected result after random sampling
set.seed(1)
# Define `X` as a random sample of `N` voters with a probability of picking a Democrat ('1') equal to `p`
X <- sample(c(0,1),size=N,replace=TRUE,prob=c(1-p,p))
# Define `X_bar` as the average sampled proportion
X_bar <- mean(X)
# Calculate the standard error of the estimate. Print the result to the console.
standard_error <- sqrt((X_bar*(1-X_bar))/N)
standard_error