library(ggplot2)

# Define color palettes
paris2024_palette1 <- c(
  "#f1abc9",  # Pink
  "#d9c47a",  # Golden
  "#2393cd",  # Blue
  "#003561",  # Midnight Blue
  "#ffffff"   # White
)

paris2024_palette2 <- c(
  "#f29dc4",  # Pink
  "#d2bd6e",  # Golden
  "#21aca7",  # Blue
  "#003853",  # Midnight Blue
  "#ffffff"   # White
)

paris2024_palette3 <- c(
  "#faa8cc",  # Pink
  "#d6c278",  # Golden
  "#ff5757",  # Red
  "#570047",  # Purple
  "#ffffff"   # White
)

paris2024_palette4 <- c(
  "#eb9ec5",  # Pink
  "#8083bf",  # Lavender
  "#331261",  # Violet
  "#d6c278",  # Golden
  "#ffffff"   # White
)

olympic_rings <- c(
  "#0081C8",  # Blue
  "#FCB131",  # Yellow
  "#00A651",  # Green
  "#000000",  # Black
  "#EE334E"   # Red
)

olympic_medals <- c(
  "#D6AF36",  # Gold
  "#A7A7AD",  # Silver
  "#A77044"   # Bronze
)

# Functions for paris2024_palette1

#' Scale Color for Paris 2024 Palette 1
#'
#' Apply the Paris 2024 Palette 1 to color scales in ggplot2.
#'
#' @param ... Other arguments passed to `scale_color_manual`.
#' @return A ggplot2 scale for colors.
#' @examples
#' ggplot(mpg, aes(x = class, color = class)) +
#'   geom_bar() +
#'   scale_color_paris2024_palette1()
#' @export
scale_color_paris2024_palette1 <- function(...) {
  scale_color_manual(values = paris2024_palette1, ...)
}

#' Scale Fill for Paris 2024 Palette 1
#'
#' Apply the Paris 2024 Palette 1 to fill scales in ggplot2.
#'
#' @param ... Other arguments passed to `scale_fill_manual`.
#' @return A ggplot2 scale for fills.
#' @examples
#' ggplot(mpg, aes(x = class, fill = class)) +
#'   geom_bar() +
#'   scale_fill_paris2024_palette1()
#' @export
scale_fill_paris2024_palette1 <- function(...) {
  scale_fill_manual(values = paris2024_palette1, ...)
}

# Functions for paris2024_palette2

#' Scale Color for Paris 2024 Palette 2
#'
#' Apply the Paris 2024 Palette 2 to color scales in ggplot2.
#'
#' @param ... Other arguments passed to `scale_color_manual`.
#' @return A ggplot2 scale for colors.
#' @examples
#' ggplot(mpg, aes(x = class, color = class)) +
#'   geom_bar() +
#'   scale_color_paris2024_palette2()
#' @export
scale_color_paris2024_palette2 <- function(...) {
  scale_color_manual(values = paris2024_palette2, ...)
}

#' Scale Fill for Paris 2024 Palette 2
#'
#' Apply the Paris 2024 Palette 2 to fill scales in ggplot2.
#'
#' @param ... Other arguments passed to `scale_fill_manual`.
#' @return A ggplot2 scale for fills.
#' @examples
#' ggplot(mpg, aes(x = class, fill = class)) +
#'   geom_bar() +
#'   scale_fill_paris2024_palette2()
#' @export
scale_fill_paris2024_palette2 <- function(...) {
  scale_fill_manual(values = paris2024_palette2, ...)
}

# Functions for paris2024_palette3

#' Scale Color for Paris 2024 Palette 3
#'
#' Apply the Paris 2024 Palette 3 to color scales in ggplot2.
#'
#' @param ... Other arguments passed to `scale_color_manual`.
#' @return A ggplot2 scale for colors.
#' @examples
#' ggplot(mpg, aes(x = class, color = class)) +
#'   geom_bar() +
#'   scale_color_paris2024_palette3()
#' @export
scale_color_paris2024_palette3 <- function(...) {
  scale_color_manual(values = paris2024_palette3, ...)
}

#' Scale Fill for Paris 2024 Palette 3
#'
#' Apply the Paris 2024 Palette 3 to fill scales in ggplot2.
#'
#' @param ... Other arguments passed to `scale_fill_manual`.
#' @return A ggplot2 scale for fills.
#' @examples
#' ggplot(mpg, aes(x = class, fill = class)) +
#'   geom_bar() +
#'   scale_fill_paris2024_palette3()
#' @export
scale_fill_paris2024_palette3 <- function(...) {
  scale_fill_manual(values = paris2024_palette3, ...)
}

# Functions for paris2024_palette4

#' Scale Color for Paris 2024 Palette 4
#'
#' Apply the Paris 2024 Palette 4 to color scales in ggplot2.
#'
#' @param ... Other arguments passed to `scale_color_manual`.
#' @return A ggplot2 scale for colors.
#' @examples
#' ggplot(mpg, aes(x = class, color = class)) +
#'   geom_bar() +
#'   scale_color_paris2024_palette4()
#' @export
scale_color_paris2024_palette4 <- function(...) {
  scale_color_manual(values = paris2024_palette4, ...)
}

#' Scale Fill for Paris 2024 Palette 4
#'
#' Apply the Paris 2024 Palette 4 to fill scales in ggplot2.
#'
#' @param ... Other arguments passed to `scale_fill_manual`.
#' @return A ggplot2 scale for fills.
#' @examples
#' ggplot(mpg, aes(x = class, fill = class)) +
#'   geom_bar() +
#'   scale_fill_paris2024_palette4()
#' @export
scale_fill_paris2024_palette4 <- function(...) {
  scale_fill_manual(values = paris2024_palette4, ...)
}

# Functions for olympic_rings

#' Scale Color for Olympic Rings Palette
#'
#' Apply the Olympic Rings Palette to color scales in ggplot2.
#'
#' @param ... Other arguments passed to `scale_color_manual`.
#' @return A ggplot2 scale for colors.
#' @examples
#' ggplot(mpg, aes(x = class, color = class)) +
#'   geom_bar() +
#'   scale_color_olympic_rings()
#' @export
scale_color_olympic_rings <- function(...) {
  scale_color_manual(values = olympic_rings, ...)
}

#' Scale Fill for Olympic Rings Palette
#'
#' Apply the Olympic Rings Palette to fill scales in ggplot2.
#'
#' @param ... Other arguments passed to `scale_fill_manual`.
#' @return A ggplot2 scale for fills.
#' @examples
#' ggplot(mpg, aes(x = class, fill = class)) +
#'   geom_bar() +
#'   scale_fill_olympic_rings()
#' @export
scale_fill_olympic_rings <- function(...) {
  scale_fill_manual(values = olympic_rings, ...)
}

# Functions for olympic_medals

#' Scale Color for Olympic Medals Palette
#'
#' Apply the Olympic Medals Palette to color scales in ggplot2.
#'
#' @param ... Other arguments passed to `scale_color_manual`.
#' @return A ggplot2 scale for colors.
#' @examples
#' ggplot(mpg, aes(x = class, color = class)) +
#'   geom_bar() +
#'   scale_color_olympic_medals()
#' @export
scale_color_olympic_medals <- function(...) {
  scale_color_manual(values = olympic_medals, ...)
}

#' Scale Fill for Olympic Medals Palette
#'
#' Apply the Olympic Medals Palette to fill scales in ggplot2.
#'
#' @param ... Other arguments passed to `scale_fill_manual`.
#' @return A ggplot2 scale for fills.
#' @examples
#' ggplot(mpg, aes(x = class, fill = class)) +
#'   geom_bar() +
#'   scale_fill_olympic_medals()
#' @export
scale_fill_olympic_medals <- function(...) {
  scale_fill_manual(values = olympic_medals, ...)
}

