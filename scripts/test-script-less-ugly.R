# import data

penguins <- read_delim(file = "penguins_raw.tsv",
                       delim = "\t")

# summarize data

summary(penguins)

# group data and so some descriptives

library(dplyr)
penguins %>%
  group_by(species) %>%
  summarize_all(mean, na.rm = TRUE)

# a scatterplot

library(ggplot2)
ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm, color = species)) +
  geom_point()