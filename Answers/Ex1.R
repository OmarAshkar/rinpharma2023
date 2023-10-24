ggplot(war_pk, aes(time, dv, color = id)) + 
  geom_point() + 
  geom_line() +
  facet_wrap(wt_cat~sex) + 
  theme(legend.position = "none")
