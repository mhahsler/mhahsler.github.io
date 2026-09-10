#' ---
#' title: "Exercise Solutions -- Objects, Lists and Data.Frames"
#' author: "Michael Hahsler"
#' output:
#'  html_document:
#'    toc: true
#'    theme: yeti
#'    highlight: zenburn
#' ---


#' ## 1. Plot a `sin(x)/x`. 
#' 
#' _Hint:_ Trigonometric functions in R use angles in radians (see `? sin`). 2 times pi is 360 degrees.

x <- seq(-6*pi, 6*pi, length.out = 100)
plot(x/pi, sin(x)/x, type = "l")


#' ## 2. The 'cars' data set gives the speed of cars and the distances taken to stop. Note that the data were recorded in the 1920s. Plot the 'cars' data set as a scatter plot. Plot all data points with distances taken to stop greater than 80 in red.

data(cars)
head(cars)
    
plot(cars)

plot(cars, col = ifelse(cars$dist > 80, "red", "black"))

#' ## 3. Plot histograms for speed and dist in 'cars'.

hist(cars$speed)
hist(cars$speed, breaks = 10)