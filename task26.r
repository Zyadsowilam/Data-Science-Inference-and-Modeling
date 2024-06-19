# The `polls` data have already been loaded for you. Use the `head` function to examine them.
head(polls)

# Create an object called `sigma` that contains a column for `pollster` and a column for `s`, the standard deviation of the spread


sigma <- polls %>%
  group_by(pollster) %>%
  summarize(s = sd(spread))

# Print the contents of sigma to the console
sigma