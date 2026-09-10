#' ---
#' title: "Exercise Solutions -- Data Handling with tidyverse"
#' author: "Michael Hahsler"
#' output:
#'  html_document:
#'    toc: true
#'    theme: yeti
#'    highlight: zenburn
#' ---

#' Solve the questions from Objects and Data using tidyverse instead of base-R
#'
#' __Note:__ Help with tidyverse can be found at https://rstudio.com/resources/cheatsheets/ 
#' eEspecially important are the Data Import (tidyr) and the Data Transformation (dplyr) cheat sheets.
#'
#' ## 1. Read and clean the MLB data set.
#'
#' Download the file. You can also just use the Web browser to download the 
#' file and put it into your working directory.
download.file("https://michael.hahsler.net/SMU/DS_Workshop_Intro_R/examples/MLB_cleaned.xlsx", destfile = "MLB_cleaned.xlsx")


#' load tidyverse and readxl (preferred Excel reader for tidyverse; you may have to install tidyverse and readxl)
library(tidyverse)
library(readxl)

mlb <- read_excel("MLB_cleaned.xlsx", sheet = 1)

#' Always check what you read!
mlb

#' read_excel produces a tidyverse `tibble` (instead of a R-base `data.frame`) and numbers are correctly encoded as `<dbl>`.  

str(mlb)
summary(mlb)

#' We may want to make the strings for team and position into factors so they are understood by R as nominal variables.

mlb <- mlb %>% mutate(Team = factor(Team), Position = factor(Position))
summary(mlb)

#' Use `View(mlb)` in RStudio to look, filter and sort the data.
#'
#' ## 2. Select only the players for the team 'ARZ'. Compare the column Team with 'ARZ' and use subsetting to select the rows.
#'
#' Select the rows for which the column team has the value 'ARZ' (space after the comma selects all columns).
mlb %>% filter(Team == "ARZ")

#' ## 3. How many players does the team 'ARZ' have in the data set?
#'
mlb %>% filter(Team == "ARZ") %>% count()

#' tidyverse makes it easy to look at the number of players for each team!
mlb %>% group_by(Team) %>% count()

#' ## 4. What is the weight of the heaviest player of the team 'ARZ' (use a function).

mlb %>% filter(Team == "ARZ") %>% summarize(max_weight = max(`Weight(pounds)`))

#' __Note:__ The backticks are needed if the column name contains spaces or special characters (parentheses in this case). Starting to write the column name and hitting Tab usually works. Regular column names do not need any quotation marks in tidyverse.
#'

#' If we want to know the name of the player then we need a different strategy. For example, we can sort the table with `arrange`.
mlb %>% filter(Team == "ARZ") %>% arrange(desc(`Weight(pounds)`)) 

#' and then get the first row with `slice`
mlb %>% filter(Team == "ARZ") %>% arrange(desc(`Weight(pounds)`)) %>% slice(1)

#' ## 5. What is the average age of all players in the dataset?

mlb %>% summarize(Age = mean(Age))

#' to get the actual value we need to extract the column from the tibble with `pull`.
mlb %>% summarize(Age = mean(Age)) %>% pull(Age)

#' ## 6. Add a column called BMI and add the body mass index (https://en.wikipedia.org/wiki/Body_mass_index) for each player.
#'
#' Assigning to a non-existing column creates the columns
mlb <- mlb %>% mutate(BMI = `Weight(pounds)`/`Height(inches)`^2 * 703) 

print(mlb, width = Inf)
#' __Note:__ `print` with `width = Inf` makes sure all columns are shown. 
#'
#' ## 7. Create a tibble containing the names, year of birth, month of birth and day of birth as separate columns with the information for 3 people. Make sure the tibble has column names (see `colnames()`).

birthdays <- tibble(
  name = c("Peter", "Michael", "Sue"), 
  year = c(1980, 1999, 2010),
  month = c("Jan", "Feb", "Mar"),
  day = c(1, 5, 10)
  )

birthdays

colnames(birthdays)

#' ## 8. Write the tibble to a file in CSV format and check it in Excel.

write_csv(birthdays, "birthdays.csv")

#' __Note:__ Don't confuse the function with R-base writing function called `write.csv()`.