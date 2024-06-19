# Load the libraries and data you need for the following exercises
library(dslabs)
library(dplyr)
library(ggplot2)
data("polls_us_election_2016")

# These lines of code filter for the polls we want and calculate the spreads
polls <- polls_us_election_2016 %>% 
  filter(pollster %in% c("Rasmussen Reports/Pulse Opinion Research","The Times-Picayune/Lucid") &
           enddate >= "2016-10-15" &
           state == "U.S.") %>% 
  mutate(spread = rawpoll_clinton/100 - rawpoll_trump/100) 

# Make a boxplot with points of the spread for each pollster
ggplot(polls, aes(x = pollster, y = spread)) +
  geom_boxplot() +
  geom_point(position = position_jitter(width = 0.1), alpha = 0.6) +
  labs(
    title = "Spread of Polls for Clinton vs. Trump",
    x = "Pollster",
    y = "Spread (Clinton - Trump)"
  ) +
  theme_minimal()






