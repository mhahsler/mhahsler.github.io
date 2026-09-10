#' ---
#' title: "An extremely short introduction to ggplot"
#' author: "Michael Hahsler"
#' output:
#'  html_document:
#'    toc: true
#'    theme: yeti
#'    highlight: zenburn
#' ---

#' ## Introduction to ggplot2
#'
#' The package `ggplot2` implements the ideas introduced by Leland Wilkinson in the book [The Grammar of Graphics](https://www.springer.com/statistics/computational/book/978-0-387-24544-7). 
#' The idea is that every graph is built from the same basic components:
#' 
#' - Data
#' - Variable transformations (e.g., counting)
#' - Scale transformations (e.g., a linear or a log scale, color scales)
#' - Coordinate system (default is Cartesian coordinates)
#' - Elements: graphs (e.g., points) and their aesthetic attributes (e.g., color)
#' - Guides (e.g., axes and legends)
#'
#' In `ggplot2`, the components are combined using the `+` operator.
#' 
#' > `ggplot(data, mapping = aes(x = ..., y = ..., color = ...)) +`
#' > `geom_point()`
#'
#' `...` are column names in the `data.frame` or `tibble` `data`.  Each `geom_X` defines an element and uses a `stat_Y` function (variable transformation) to calculate what is visualizes. For example,
#' `geom_bar` uses `stat_count` to create a bar chart by counting how often each value appears in the data (see `? geom_bar`). `geom_point` just uses the stat `"identity"` to display the points using the coordinates as they are.
#' Scales, the coordinate system and guides are added automatically and can be changed by adding them as a new component to the end of the call.
#'
#' RStudio's [Data Visualization Cheat Sheet](https://github.com/rstudio/cheatsheets/raw/master/data-visualization-2.1.pdf) offers a comprehensive overview of available components. A good introduction
#' can be found in the [Chapter on Data Visualization](https://r4ds.had.co.nz/data-visualisation.html) of the free book [R for Data Science](https://r4ds.had.co.nz).
#'
#' ## Plots
library(tidyverse)

data(iris)
iris <- as_tibble(iris)
iris

#' ### Scatterplot
ggplot(iris, aes(x = Petal.Width, y = Sepal.Width)) + geom_point()

#' Color by species
ggplot(iris, aes(x = Petal.Width, y = Sepal.Width, color = Species)) + geom_point()

#' ### Histogram
ggplot(iris, aes(Petal.Width)) + geom_histogram(bins = 20)

#' Color by species
ggplot(iris, aes(Petal.Width, fill = Species)) + geom_histogram(bins = 20)

#' Density instead of counts
ggplot(iris, aes(Petal.Width, fill = Species)) + geom_density(alpha = .8)

#' ### Barplot
#'
#' Barplots count! Each `geom_` has a `stat_` associates. `geom_bar` uses `stat_count` (see `? geom_bar`).
ggplot(iris, aes(Species)) + geom_bar()

#' ### Boxplot
#' 
#' To compare different species, we have to convert the data into long format (only one value per row).
iris_long <- iris %>% mutate(id = row_number()) %>% pivot_longer(1:4)

iris_long

ggplot(iris_long, aes(name, value)) + geom_boxplot()

#' ## Colors and Themes
#'
#' Everything that changes with the data needs to go in the `aes()` in `ggplot()`. 
#' For example, do not put color into `geom_point()` unless you want all point having the same color.

ggplot(iris, aes(x = Petal.Width, y = Sepal.Width, color = Species)) + geom_point()

#' Use a different color scheme
library(viridis)
ggplot(iris, aes(x = Petal.Width, y = Sepal.Width, color = Species)) + geom_point() +
  scale_color_viridis(discrete=TRUE)

#' You need to distinguish between discrete (for factors) and continuous scales. You can apply scales to color and fill (i.e, `scale_color_*` and `scale_fill_*`).
#' 
#' Themes let you change the look of your plots.
ggplot(iris, aes(x = Petal.Width, y = Sepal.Width, color = Species)) + geom_point() +
  theme_minimal()

ggplot(iris, aes(x = Petal.Width, y = Sepal.Width, color = Species)) + geom_point() +
  theme_linedraw() + scale_color_grey()

#' ## Facets
#' 
#' Group plot by a discrete variable
ggplot(iris, aes(x = Petal.Width, y = Sepal.Width)) + geom_point() + 
  facet_grid(cols = vars(Species)) 



