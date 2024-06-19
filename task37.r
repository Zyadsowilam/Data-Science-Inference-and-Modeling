
# Load the libraries and data
library(dplyr)
library(dslabs)
data("polls_us_election_2016")

# Create a table called `polls` that filters by  state, date, and reports the spread
polls <- polls_us_election_2016 %>% 
  filter(state != "U.S." & enddate >= "2016-10-31") %>% 
  mutate(spread = rawpoll_clinton/100 - rawpoll_trump/100)

# Create an object called `cis` that has the columns indicated in the instructions

cis <- polls %>% mutate(X_hat = (spread+1)/2, 
  se = 2*sqrt(X_hat*(1-X_hat)/samplesize), 
  lower = spread - qnorm(0.975)*se, 
  upper = spread + qnorm(0.975)*se) %>%
  
  select(state, startdate, enddate, pollster, grade, spread, lower, upper)