# The 'totals' data have already been loaded. Examine them using the `head` function.
head(totals)

# Perform a chi-squared test on the hit data. Save the results as an object called 'chisq_test'.

chisq_test <- totals %>% 
  select(-hit) %>%
  chisq.test()
chisq_test




# Print the p-value of the chi-squared test to the console
chisq_test$p.value