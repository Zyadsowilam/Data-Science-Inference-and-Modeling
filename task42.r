# The `cis` data have already been loaded. Examine it using the `head` function.
head(cis)

# Create an object called `errors` that calculates the difference between the predicted and actual spread and indicates if the correct winner was predicted
errors <- cis %>% mutate(error = spread - actual_spread, 
    hit = sign(spread) == sign(actual_spread))

# Examine the last 6 rows of `errors`
tail(errors)