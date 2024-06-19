# The subset `polls` data with 'd_hat' already calculated has been loaded. Examine it using the `head` function.
head(polls)

# Create a new object called `pollster_results` that contains columns for pollster name, end date, d_hat, lower confidence interval of d_hat, and upper confidence interval of d_hat for each poll.
pollster_results <- polls %>%
  mutate(
    X_hat = (d_hat + 1) / 2,  
    se_hat = 2* sqrt(X_hat * (1 - X_hat) / samplesize),  
    lower = d_hat - qnorm(0.975) * se_hat,   
    upper = d_hat + qnorm(0.975) * se_hat    
  ) %>%
  select(pollster, enddate, d_hat, lower, upper)