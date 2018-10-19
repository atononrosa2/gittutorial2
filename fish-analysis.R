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
                        
# histogram of scale length
# fill is by length_cat
# facet wrap ~ length_cat w/ themes
# invite Chris to be colaborator to the repository


fish %>%
  ggplot() +
  geom_histogram(aes(x = scalelength, fill = length_cat)) +
  facet_wrap(~length_cat) +
  theme_presentation()
  #coord_cartesian(xlim = c(-0.5, 80), ylim = c(0, 30), expand = FALSE) +
  #scale_x_continuous(breaks = seq(0,90, by = 10)) +
  #scale_y_continuous(breaks = seq(0,30, by = 5), labels = letters[1:7]) + #be careful using "limits" because it drops data
  #labs(x = "Value", y = "Frequency", title = "Histogram") +
  #theme_classic() +
  #theme(plot.title = element_text(hjust = 0.5, colour = "red"),
        #plot.background = element_rect(fill = "lightgrey"),
        #panel.background = element_rect(fill = "lightgrey"),
        #axis.title = element_text(size = 18, colour = "chartreuse"),
        #axis.text = element_text(size = 14))

  
