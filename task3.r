# Given values
p <- 0.45  # Proportion of Democratic voters
d <- -0.1  # Margin of victory (difference)
N <- 25    # Sample size

# Calculate SE(mean)
SE_mean <- sqrt(p * (1 - p) / N)

# Calculate SE(2*mean - 1)
SE_2mean_minus_1 <- 2 * SE_mean


SE_2mean_minus_1
