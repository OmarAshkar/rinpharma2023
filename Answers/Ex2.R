ggplot(war_pd, aes(time, dv, color = id)) + 
  geom_point() + 
  geom_line() +
  facet_grid(wt_cat~sex+age_cat, margin = TRUE) + 
  theme(legend.position = "none")