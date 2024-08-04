# paris2024color
Paris 2024 Olympics color palette for R
![Paris 2024](https://github.com/ezgisiir/paris2024color/blob/main/paris_2024.PNG?raw=true)
## Reference
[![The Look of the Games](https://olympics.com/en/paris-2024/information/the-look-of-the-games)
](https://olympics.com/en/paris-2024/information/the-look-of-the-games)


library(ggplot2)
# Define all your palettes
palettes <- list(
  paris2024_palette1 = c("#f1abc9", "#d9c47a", "#2393cd", "#003561", "#ffffff"),
  paris2024_palette2 = c("#f29dc4", "#d2bd6e", "#21aca7", "#003853", "#ffffff"),
  paris2024_palette3 = c("#faa8cc", "#d6c278", "#ff5757", "#570047", "#ffffff"),
  paris2024_palette4 = c("#eb9ec5", "#8083bf", "#331261", "#d6c278", "#ffffff"),
  olympic_rings = c("#0081C8", "#FCB131", "#00A651", "#000000", "#EE334E"),
  olympic_medals = c("#D6AF36", "#A7A7AD", "#A77044")
)

# Plot each palette using a loop
plot_list <- lapply(names(palettes), function(palette_name) {
  palette_data <- data.frame(
    color = palettes[[palette_name]],
    labels = paste(palette_name, seq_along(palettes[[palette_name]])),
    id = seq_along(palettes[[palette_name]])
  )
  
  # Generate the plot
  p <- ggplot(palette_data, aes(x = as.factor(id), y = 1, fill = color)) +
    geom_tile(aes(width = 1, height = 1), color = "black") +
    scale_x_discrete(expand = c(0, 0)) +
    scale_y_discrete(expand = c(0, 0)) +
    scale_fill_identity() +
    theme_void() +
    theme(legend.position = "none", panel.spacing = unit(0, "lines")) +
    labs(title = paste("Palette:", palette_name)) +
    xlab("") + ylab("")
  
  return(p)
})

# If you want to print the plots directly in the console or RMarkdown
invisible(lapply(plot_list, print))
