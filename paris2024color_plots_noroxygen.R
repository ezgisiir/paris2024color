
rm(list=ls())

library(devtools)
build()
install()

setwd("C:/Users/gokha/Desktop/paris2024color")



library(ggplot2)
library(paris2024color)
library(dplyr)



#1



# Load the data
data <- read.csv("C:/Users/gokha/Desktop/archive/athlete_events.csv")

# Filter and process the data to count gold medals by country
gold_medals <- data %>%
  filter(Medal == "Gold") %>%
  count(NOC, name = "Medal") %>%
  arrange(desc(Medal)) %>%
  head(5)

# Plot the data
ggplot(gold_medals, aes(x = reorder(NOC, -Medal), y = Medal, fill = NOC)) +
  geom_bar(stat = "identity",color = "black", size = 0.7) +
  theme(legend.position = "none") +
  labs(x = "Top 5 Countries", y = "Number of Medals", title = "Medals per Country") +
  scale_fill_paris2024_palette2()




#2

ggplot(mtcars, aes(x = factor(cyl), fill = factor(vs))) +
  geom_bar() +
  scale_fill_paris2024_palette4()





#3

# Filter the mpg dataset
filtered_mpg <- mpg %>%
  filter(class %in% c("compact", "suv", "midsize", "minivan", "pickup"))

# Plot using ggplot2 with the defined palette
ggplot(filtered_mpg, aes(x = class, color = class)) +
  geom_point(aes(y = hwy), size = 3) +
  scale_color_olympic_rings()

