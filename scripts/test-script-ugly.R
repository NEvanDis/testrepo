penguins <- read.delim("penguins_raw.tsv", "\t")

summary(penguins)

library(dplyr)
penguins_grouped <- penguins %>% group_by(species) %>% summarize_all(mean, na.rm = TRUE)
penguins_grouped

library(ggplot2)
ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm, color = species)) + geom_point()