# Create an object called `errors` that calculates the difference between the predicted and actual spread and indicates if the correct winner was predicted
errors <- cis %>% mutate(error = spread - actual_spread, hit = sign(spread) == sign(actual_spread))

# Create an object called `p_hits` that summarizes the proportion of hits for each state that has 5 or more polls

p_hits <- errors %>% group_by(state) %>%
    filter(state >= 5) %>%
    summarize(proportion_hits = mean(hit), n = n())



# Make a barplot of the proportion of hits for each state
p_hits %>% 
  ggplot(aes(x= reorder(state,+proportion_hits), y=proportion_hits))+ 
  geom_bar(stat = "identity", width = 0.80, 
           position = position_dodge(0.9),fill= "lightblue")+
  ylab("Proportion of polls within the CI") +
  xlab("State") +
  theme(axis.text=element_text(size=7), 
  aspect.ratio=16/9) +
  coord_flip()