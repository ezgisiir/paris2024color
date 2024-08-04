

# Plot color palettes


# Define and plot palettes, then save as images
palettes <- list(
  paris2024_palette1 = c("#f1abc9", "#d9c47a", "#2393cd", "#003561", "#ffffff"),
  paris2024_palette2 = c("#f29dc4", "#d2bd6e", "#21aca7", "#003853", "#ffffff"),
  paris2024_palette3 = c("#faa8cc", "#d6c278", "#ff5757", "#570047", "#ffffff"),
  paris2024_palette4 = c("#eb9ec5", "#d6c278", "#8083bf", "#331261",  "#ffffff"),
  olympic_rings = c("#0081C8", "#FCB131", "#00A651", "#000000", "#EE334E"),
  olympic_medals = c("#D6AF36", "#A7A7AD", "#A77044")
)

plot_list <- lapply(names(palettes), function(palette_name) {
  palette_data <- data.frame(
    color = palettes[[palette_name]],
    labels = paste(palette_name, seq_along(palettes[[palette_name]])),
    id = seq_along(palettes[[palette_name]])
  )

  p <- ggplot(palette_data, aes(x = as.factor(id), y = 1, fill = color)) +
    geom_tile(aes(width = 1, height = 1), color = "black") +
    scale_x_discrete(expand = c(0, 0)) +
    scale_y_discrete(expand = c(0, 0)) +
    scale_fill_identity() +
    theme_void() +
    theme(legend.position = "none", panel.spacing = unit(0, "lines")) +
    labs(title = paste("Palette:", palette_name)) +
    xlab("") + ylab("")

  # Save the plot
  ggsave(paste0("plots/", palette_name, ".png"), plot = p, width = 8, height = 2)

  return(p)
})
