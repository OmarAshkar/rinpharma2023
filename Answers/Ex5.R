a <- plot_ly(war_pk,x = ~sex, y = ~dv, type = "box",showlegend = F)
b <- plot_ly(war_pk,x = ~age_cat, y = ~dv, type = "box",showlegend = F)
c <- plot_ly(war_pk,x = ~wt_cat, y = ~dv, type = "box",showlegend = F)
subplot(list(a,b,c)) 