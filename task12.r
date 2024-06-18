# Define `N` as the number of people polled
N <-100

# Define `X_hat` as the sample average
X_hat <- 0.51

# Define `se_hat` as the standard error of the sample average
se_hat <- sqrt((X_hat*(1-X_hat))/N)

# Calculate the probability that the error is 0.01 or larger
prob_ls <-  pnorm(X_hat-0.01,mean=X_hat,sd=se_hat)
prob_gr <- 1-  pnorm(X_hat+0.01,mean=X_hat,sd=se_hat)
prob <- prob_ls + prob_gr
prob