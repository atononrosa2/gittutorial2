theme_publication <- function() {
  theme_gray(base_size = 24, base_family = "Times New Roman") %+replace%
    theme(plot.title = element_text(hjust = 0, lineheight = .8),
          panel.grid.major = element_blank(), panel.grid.minor = element_blank())
}

theme_presentation <- function() {theme_bw(base_size = 32, base_family = "Calibri") %+replace%
    theme(plot.title = element_text(hjust = 0.5, lineheight = .8, face = "bold")
    )
}
