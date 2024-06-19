# The `p_hits` data have already been loaded for you. Use the `head` function to examine it.
head(p_hits)

# Make a barplot of the proportion of hits for each state
p_hits %>% 
  ggplot(aes(x= reorder(state, +proportion_hits), y= proportion_hits)) +
  geom_bar(stat = "identity", width = 0.80, position = position_dodge(0.9), fill= "lightblue") +
  ylab("Proportion of polls within the CI") +
  xlab("State") +
  theme(axis.text=element_text(size=7), aspect.ratio=16/9) +
  coord_flip()