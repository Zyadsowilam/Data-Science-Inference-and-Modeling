# Define `p` as the expected value equal to 0.45
p <- 0.45

# Define `N` as the sample size
N <- 100

# Calculate the standard error
standard_error <- sqrt((p * (1-p))/N)
standard_error