## Challenge
# library tidyverse
# load data from data folder
# create a new column in data called legth_cat length > 200 its big toerhwise small
# commint w/ message
# push

.libPaths("C:/Users/Alexandre Tonon Rosa/Box Sync/My Documents/Classes/Data Management, Visualization/Rlibrary")
library(tidyverse)
source("R/themes.R")

fish <- read_csv("C:/Users/Alexandre Tonon Rosa/Box Sync/My Documents/Classes/Data Management, Visualization/2018-10-12-RClass/2018-10-12-RClass/gittutorial2/data/Gaeta_etal_CLC_data.csv")

fish %>%
  mutate(length_cat = case_when(length >= 300 ~ "big",
                                length < 300 ~ "small")) -> fish
head(fish)
                        