# The `pollster_results` object has already been loaded. Examine it using the `head` function.
head(pollster_results)

# Add a logical variable called `hit` that indicates whether the actual value (0.021) exists within the confidence interval of each poll. Summarize the average `hit` result to determine the proportion of polls with confidence intervals include the actual value. Save the result as an object called `avg_hit`.
avg_hit<-pollster_results %>%
  mutate(
    hit = ifelse(lower <= 0.021 & upper >= 0.021, TRUE, FALSE)
  )%>%
  summarise(
    avg_hit = mean(hit, na.rm = TRUE)
  )