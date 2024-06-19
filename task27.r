# The `polls` data have already been loaded for you. Use the `head` function to examine them.
head(polls)

# Create an object called `res` that summarizes the average, standard deviation, and number of polls for the two pollsters.

res <- polls %>%
  group_by(pollster) %>%
  summarize(avg_spread = mean(spread), 
            sd_spread = sd(spread), 
            n_polls = n())



# Store the difference between the larger average and the smaller in a variable called `estimate`. Print this value to the console.

estimate <- diff(res$avg_spread)

estimate
# Store the standard error of the estimates as a variable called `se_hat`. Print this value to the console.

se_hat <- sqrt(sum((res$sd_spread^2) / res$n_polls))


# Calculate the 95% confidence interval of the spreads. Save the lower and then the upper confidence interval to a variable called `ci`.

ci <- c(estimate - qnorm(0.975) * se_hat, estimate + qnorm(0.975) * se_hat)
