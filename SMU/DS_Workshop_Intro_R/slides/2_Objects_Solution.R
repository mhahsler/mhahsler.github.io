#' ---
#' title: "Exercise Solutions -- Objects, Lists and Data.Frames"
#' author: "Michael Hahsler"
#' output:
#'  html_document:
#'    toc: true
#'    theme: yeti
#'    highlight: zenburn
#' ---

#' ## 1. Read and clean the MLB data set.
#'
#' Download the file. You can also just use the Web browser to download the 
#' file and put it into your working directory.
download.file("https://michael.hahsler.net/SMU/DS_Workshop_Intro_R/examples/MLB_cleaned.xlsx", destfile = "MLB_cleaned.xlsx")

#' We need a library that can read Excel files.
library(xlsx)
mlb <- xlsx::read.xlsx2("MLB_cleaned.xlsx", sheetIndex = 1)

#' Always check what you read!
head(mlb)
str(mlb)
summary(mlb)

#' We need to fix the numbers that were read as character.
mlb$Height.inches. <- as.numeric(mlb$Height.inches.)
mlb$Weight.pounds. <- as.numeric(mlb$Weight.pounds.)
mlb$Age <- as.numeric(mlb$Age)

#' Convert the character variables to factors so we get counts.
mlb$First.Name <- factor(mlb$First.Name)
mlb$Last.Name <- factor(mlb$Last.Name)
mlb$Team <- factor(mlb$Team)
mlb$Position <- factor(mlb$Position)

summary(mlb)

#' Use `View(mlb)` in RStudio to look, filter and sort the data.
#'
#' ## 2. Select only the players for the team 'ARZ'. Compare the column Team with 'ARZ' and use subsetting to select the rows.
#'
#' Select the rows for which the column team has the value 'ARZ' (space after the comma selects all columns).
mlb[mlb$Team == "ARZ", ]

#' ## 3. How many players does the team 'ARZ' have in the data set?
#'
#' There are multiple options. Look at the number of rows of the table.
nrow(mlb[mlb$Team == "ARZ", ])

#' Look at the length of the vector of indices where the comparison results in `TRUE`.
length(which(mlb$Team == "ARZ"))

#' Count the number of times the comparison results in `TRUE`. 
#' `mlb$Team == "ARZ"` is a logical vector, but since `sum` needs numbers it
#' is converted into vector of 0s (for `FALSE`) and 1s (for `TRUE`). Therefore,
#' the sum is the number of `TRUE` values.
sum(mlb$Team == "ARZ")

#' ## 4. What is the weight of the heaviest player of the team 'ARZ' (use a function).

mlb_arz <- mlb[mlb$Team == "ARZ", ]
max(mlb_arz$Weight.pounds.)

#' If we want to know the name of the player then we need to sort the table.
#' `sort` sorts values and `order` returns the index of the sorted values (e.g., index of the highest value, index of the second highest value, etc.). 
sort(mlb_arz$Weight.pounds., decreasing = TRUE)
order(mlb_arz$Weight.pounds., decreasing = TRUE)

#' We can reorder the rows using the index vector computed with `order`.
head(mlb_arz[order(mlb_arz$Weight.pounds., decreasing = TRUE), 
  c("Last.Name", "Weight.pounds.")])

#' ## 5. What is the average age of all players in the dataset?

mean(mlb$Age) 

#' ## 6. Add a column called BMI and add the body mass index (https://en.wikipedia.org/wiki/Body_mass_index) for each player.
#'
#' Assigning to a non-existing column creates the columns
mlb$BMI <- ( mlb$Weight.pounds. / mlb$Height.inches.^2 ) * 703 
head(mlb)

#' ## 7. Create a data.frame containing the names, year of birth, month of birth and day of birth as separate columns with the information for 3 people. Make sure the data.frame has column names (see `colnames()`).

birthdays <- data.frame(
  name = c("Peter", "Michael", "Sue"), 
  year = c(1980, 1999, 2010),
  month = c("Jan", "Feb", "Mar"),
  day = c(1, 5, 10)
  )

birthdays

colnames(birthdays)

#' ## 8. Write the data.frame to a file in CSV format and check it in Excel.

write.csv(birthdays, file = "birthdays.csv")
