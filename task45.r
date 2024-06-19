# The `errors` data have already been loaded. Examine them using the `head` function.
head(errors)

# Create a boxplot showing the errors by state for polls with grades B+ or higher
errors %>% filter(grade %in% c("A+", "A", "A-", "B+") | is.na(grade)) %>%
    mutate(state = reorder(state, error)) %>%
    ggplot(aes(x = state, y = error, fill = state)) +
    geom_boxplot()+
    geom_point() +
    theme(axis.text.x = element_text(size = 7, angle = 90, vjust=.5, hjust=1), legend.position = "none")