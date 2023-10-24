filter <- war_pk |> filter(id == 1)
cmax <- max(filter$dv) # 10.8
tmax <- filter$time[filter$dv == cmax] # 9
points <- data.frame(x = c(8, 10, 10, 8), y = c(10, 10, 11, 11))

ggplot(filter, aes(time, dv)) +
  geom_point() + 
  geom_line() + 
  geom_polygon(data = points  , aes(x , y, fill = "grey", col = "red"), 
               alpha = 0.1) + 
  annotate('curve', x = tmax+5, y = cmax+5, xend = tmax, yend=cmax, 
           curvature = 0.5, arrow = arrow(length = unit(0.2, 'in')), 
           linewidth = 1, linetype = "dotted", color = "orange2") +
  annotate('text', x = tmax+6, y = cmax+6, label = paste("Cmax =", cmax)) +
  geom_hline(yintercept = cmax, linetype = "dashed") +
  theme_classic() +
  theme(legend.position = "none")