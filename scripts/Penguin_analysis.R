# Script to analyse penguin data set

# Set up environment
#--------------------------------------------
#install.packages("renv")
library(tidyverse)
library(readxl)

# --- Load data
# data source: https://allisonhorst.github.io/palmerpenguins/
d_raw <- read.table("data/raw/penguins_raw.tsv")
d_isotopes <- read_xlsx("data/processed/penguins_isotopes.xlsx")

#data for 344 penguins
# There are 3 different species of penguins in this dataset, 
# collected from 3 islands in the Palmer Archipelago, Antarctica


sessionInfo() %>% capture.output(file="src/env_Ranalysis.txt")
