# The `errors` data have already been loaded. Examine them using the `head` function.
head(errors)

# Create a boxplot showing the errors by state for states with at least 5 polls with grades B+ or higher
errors %>% filter(grade %in% c("A+", "A", "A-", "B+") | is.na(grade)) %>%
    group_by(state) %>%
    filter(state >= 5) %>%
    ungroup %>%
    mutate(state = reorder(state, error)) %>%
    ggplot(aes(x = state, y = error, fill = state)) +
    geom_boxplot()+
    geom_point() +
    theme(axis.text.x = element_text(size = 7, angle = 90, vjust=.5,    hjust=1), legend.position = "none")