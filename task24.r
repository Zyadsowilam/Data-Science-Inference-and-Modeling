# Define `mu` as the population average
mu <- mean(x)

# Use the `set.seed` function to make sure your answer matches the expected result after random sampling
set.seed(1)

# Define `N` as the number of people measured
N <- 50

# Define `B` as the number of times to run the model
B <- 10000

# Define an object `res` that contains a logical vector for simulated intervals that contain mu
check_ci <- function() {
 
  X <- sample(x, N, replace = TRUE)
  
  
  sample_average <- mean(X)
  sample_std_dev <- sd(X)
  
  
  se <- sample_std_dev / sqrt(N)
  
  
  ci_lower <- sample_average - qnorm(0.975) * se
  ci_upper <- sample_average + qnorm(0.975) * se
  
  
  mu >= ci_lower & mu <= ci_upper
}


res <- replicate(B, check_ci())


# Calculate the proportion of results in `res` that include mu. Print this value to the console.
proportion <- mean(res)
proportion