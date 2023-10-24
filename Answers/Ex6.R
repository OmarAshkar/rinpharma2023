map(split(war_pk, war_pk$id), \(x){
  plot_ly(data = x, x = ~time, y = ~dv, type = "scatter", 
          mode = "lines", name = ~id)
}) |> 
  subplot(nrows = 5)