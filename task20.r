# The `polls` object has already been loaded. Examine it using the `head` function.
head(polls)

# Add variable called `error` to the object `polls` that contains the difference between d_hat and the actual difference on election day. Then make a plot of the error stratified by pollster, but only for pollsters who took 5 or more polls.
polls <- polls %>%
  mutate(
    error = d_hat - 0.021
  )
polls %>%
  group_by(pollster) %>%
  filter(n() >= 5)%>%
  ggplot(aes(x = pollster, y = error)) +
  geom_point() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  labs(
    x = "Pollster",
    y = "Error (Estimated - Actual)",
    title = "Errors in Estimated vs Actual Difference by Pollster (≥ 5 polls)"
  )