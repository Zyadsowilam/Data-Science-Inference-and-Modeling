# Define the variables from previous exercises
mu <- 0
sigma <- results$se
Y <- results$avg

# Define a variable `taus` as different values of tau
taus <- seq(0.005, 0.05, len = 100)

# Create a function called `p_calc` that generates `B` and calculates the probability of the spread being less than 0

p_calc <- function(taus) {
    B <- sapply(taus, function(i) (sigma^2 / (sigma^2 + i^2)))
    se <- sapply(taus, function(i) sqrt( 1/ (1/sigma^2 + 1/i^2)))
    exp_value = sapply(B, function(i) (1 - i) * Y)
    pnorm(0, mean=exp_value, sd=se)
}



# Create a vector called `ps` by applying the function `p_calc` across values in `taus`

ps <- sapply(taus, p_calc)
# Plot `taus` on the x-axis and `ps` on the y-axis

plot(taus, ps, type = 'l', xlab = 'Tau', ylab = 'Probability of Trump winning', main = 'Effect of Prior Variance on Trump Winning Probability')