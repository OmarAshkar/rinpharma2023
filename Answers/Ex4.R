plot_ly(data = war_pkpd, x = ~cp, y = ~pca, color = ~id, type = "scatter", mode = "lines+markers") |>
  layout(title = "PD Warfarin", xaxis = list(title = "Concentration"), yaxis = list(title = "prothrombin complex activity (PCA)")) |>
  add_trace(text = ~paste("ID: ", id, "<br>Concentration: ", cp, "<br>PCA: ", pca, "<br>Age:", age, "<br>Wt:" , wt)) |> 
  layout(autosize = F, width = 700, height = 400)