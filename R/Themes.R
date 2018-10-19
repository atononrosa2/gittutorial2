install.packages("plotly")
library(plotly)
# Theme Publication

theme_publication <- function() {
  theme_gray(base_size = 24, base_family = "Times New Roman") %+replace%
    theme(plot.title = element_text(hjust = 0, lineheight = .8), #change stuff here
          #panel.background = element_rect(fill = "lightgray", colour = NA))
          #plot.background
          panel.grid.major = element_blank(), panel.grid.minor = element_blank())
}

ggplot() +
  geom_point(data = mpg, aes(x = cty, y = hwy, colour = factor(cyl))) +
  coord_cartesian(xlim= c(0,40), ylim = c(0, 50), expand = FALSE)+
  labs(x = "City", y = "Highway", title = "Miles per Gallon",
       subtitle = "Estimated",
       caption = "Source: Lincoln Dealerships") +
  theme_publication()



# Theme Presentation

theme_presentation <- function() {theme_bw(base_size = 32, base_family = "Calibri") %+replace%
    theme(plot.title = element_text(hjust = 0.5, lineheight = .8, face = "bold") #change stuff here
    )
}

ggplot() +
  geom_point(data = mpg, aes(x = cty, y = hwy, colour = factor(cyl))) +
  stat_smooth(method = 'lm', aes(colour = 'linear'), se = FALSE) +
  coord_cartesian(xlim= c(5,40), ylim = c(5, 50), expand = FALSE)+
  labs(x = "City", y = "Highway", title = "Miles per Gallon") +
  theme_presentation()