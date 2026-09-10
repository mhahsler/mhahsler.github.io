#' ---
#' title: "Exercise Solutions -- Plots using ggplot"
#' author: "Michael Hahsler"
#' output:
#'  html_document:
#'    toc: true
#'    theme: yeti
#'    highlight: zenburn
#' ---

#' ## Introduction to ggplot2
#'
#' The gg in `ggplot2` stands for [__grammar of graphics__](https://www.springer.com/statistics/computational/book/978-0-387-24544-7). 
#' The idea is that every graph is built from the same basic components:
#' 
#' - the data,
#' - a coordinate system, and
#' - visual marks representing the data (geoms).
#'
#' In `ggplot2`, the components are combined using the `+` operator.
#' 
#' > `ggplot(data, mapping = aes(x = ..., y = ..., color = ...)) +`
#' > `geom_point() +`
#' > `coord_cartesian()`
#'
#' Each `geom_X` uses a `stat_Y` function to calculate what is visualizes. For example,
#' `geom_bar` uses `stat_count` to create a bar chart by counting how often each value appears in the data (see `? geom_bar`). `geom_point` just uses the stat `"identity"` to display the points using the coordinates as they are.
#'
#' RStudio's [Data Visualization Cheat Sheet](https://github.com/rstudio/cheatsheets/raw/master/data-visualization-2.1.pdf) offers a comprehensive overview of available components. A good introduction
#' can be found in the [Chapter on Data Visualization](https://r4ds.had.co.nz/data-visualisation.html) of the free book [R for Data Science](https://r4ds.had.co.nz).


library(ggplot2)

#' ## 1. Plot a `sin(x)/x`. 
#' 
#' _Hint:_ Trigonometric functions in R use angles in radians (see `? sin`). 2 times pi is 360 degrees.
#'
#' Create the data 
x <- seq(-6*pi, 6*pi, length.out = 100)

#' ggplot2 needs the data to be in a data.frame or tibble with all the data.
dat <- data.frame(x = x, y = sin(x)/x)
head(dat)

#' We map `x` in the data.frame to the x-axis and `y` to the y-axis and then
#' add a geom that produces a line representation. The Cartesian coordinate system is the default.
ggplot(data = dat, mapping = aes(x = x, y = y)) + 
  geom_line()


#' ## 2. The 'cars' data set gives the speed of cars and the distances taken to stop. Note that the data were recorded in the 1920s. Plot the 'cars' data set as a scatter plot. Plot all data points with distances taken to stop greater than 80 in red.

data(cars)
head(cars)

#'  basic version with points
ggplot(cars, mapping = aes(x = speed, y = dist)) + 
  geom_point() 

#' Add color as a mapping that is only used by `geom_points`. Mappings 
#' defined in `ggplot` are used by all geoms of the graph.
ggplot(cars, mapping = aes(x = speed, y = dist)) + 
  geom_point(mapping = aes(color = dist > 80)) 

#' define the colors using a manual color scale
ggplot(cars, mapping = aes(x = speed, y = dist)) + 
  geom_point(mapping = aes(color = dist > 80)) + 
  scale_color_manual(values = c("black", "red"))
  
#' add a second geom that produces a smoothed line (default is a local polynomial regression).
ggplot(cars, mapping = aes(x = speed, y = dist)) + 
  geom_point(mapping = aes(color = dist > 80)) + 
  scale_color_manual(values = c("black", "red")) +
  geom_smooth()

#' ## 3. Plot histograms for speed and dist in 'cars'.

ggplot(cars, aes(x = speed)) + 
  geom_histogram(bins = 10)

