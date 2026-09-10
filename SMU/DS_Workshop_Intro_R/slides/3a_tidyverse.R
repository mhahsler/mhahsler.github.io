#' ---
#' title: "An Extremely Short Introduction to Tidyverse"
#' author: "Michael Hahsler"
#' output:
#'  html_document:
#'    toc: true
#'    theme: yeti
#'    highlight: zenburn
#' ---

#' # Introduction
#'
#' [Tidyverse](https://www.tidyverse.org/) is a collection of packages that makes working with data 
#' simpler and more consistent.
#'  
#' A good overview is given in
#' the Data Transformation with dplyr cheat sheet 
#' (see [Posit Cheatsheets](https://posit.co/resources/cheatsheets/)) and an introduction can be found in the
#' [Section on Data Wrangling](https://r4ds.had.co.nz/wrangle-intro.html) the free book [R for Data Science](https://r4ds.had.co.nz).
#' 
#' To use
#' tidyverse you have to install it first with `install.packages("tidyverse")`.
#' Load tidyverse:
library("tidyverse")

#' # Tibbles
#'
#' A [`tibble`](https://tibble.tidyverse.org/) is a replacement for a `data.frame` that is simpler and often 
#' faster. 
#' 
#' The iris data comes as a `data.frame`.

data("iris")
head(iris)

#' Convert the data into a `tibble`.
iris <- as_tibble(iris)
iris

#' tibbles can be used (almost) exactly like data.frames.
#' 
#' # Pipes `%>%` 
#'
#' Pipes let you compose a sequence of function calls in a more readable way.
#' The following two lines do the same.
#' 
#' Standard functional form in R using nested functions:
print(head(iris))

#' Using pipes makes this more readable as a sequence of operations:
iris %>% head() %>% print()

#' The pipe supplies the result of the 
#' previous function as the first argument of the next function.
#' More information on pipes can be found in the package [magrittr](https://magrittr.tidyverse.org/).

#'
#' # Data Import with `readr`
#' 
#' Use `read_csv()` (note the `_`). It will guess data types and is faster 
#' and more versatile compared to the base R read function.
#'
#' # Data Transformation with `dplyr`
#'
#' [`dplyr`](https://dplyr.tidyverse.org/) uses pipes to apply a series of functions to data. Functions are:
#'
#' - Pick observations by their values using `filter()`.
#' - Reorder the rows using `arrange()`.
#' - Pick variables by their names with `select()`.
#' - Create new variables with functions of existing variables with `mutate()`.
#' - Calculate groups summaries using `group_by()` and `summarize()`.
#' 
#' Variable names (columns) from the data can be directly used in the functions.
#' 
#' Examples:

iris %>% filter(Species == "setosa")

iris %>% arrange(desc(Sepal.Length))

iris %>% select(starts_with("Sepal"))

iris %>% mutate(Sepal.Length_scaled = drop(scale(Sepal.Length)))

iris %>% group_by(Species) %>% summarize_all(mean)

#' `dplyr` also provides join functions to merge multiple tables.
#' 
#' # Tidy data with `tidyr`
#' 
#' Data can be organized in a wide format or in a long format. The iris dataset is in the wide format 
#' (i.e., multiple columns with values).

head(iris)

#' To convert the data into a long format we can use `pivot_longer()`.

iris_long <- iris %>% pivot_longer(cols = c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")) 
iris_long

#' An application is to use a long format with `ggplot2` facets to show a histogram for each variable. 
ggplot(iris_long, mapping = aes(value)) + geom_histogram() + facet_grid(cols = vars(name), rows = vars(Species))

#' Long format can be converted to a wide format using `pivot_wider()`.


#' 
#' # Strings, Dates, Factors, etc.
#' 
#' Tidyverse also provides:
#'  
#' - `forcats` for factors.
#' - `lubridate` for time and dates.
#' - `stringr` for strings. 
#' - `purr` for apply functions.
#' 