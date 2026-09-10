#' ---
#' title: "Exercise Solutions -- Overview: A first R session"
#' author: "Michael Hahsler"
#' output:
#'  html_document:
#'    toc: true
#'    theme: yeti
#'    highlight: zenburn
#' ---

#' ## 1. Create a vector with 10 numbers (3, 12, 6, -5, 0, 8, 15, 1, -10, 7) and assign it to x.

x <- c(3, 12, 6, -5, 0, 8, 15, 1, -10, 7)
x

#' ## 2. What is the data type of x? How can you find out?

# The mode is typically what we are interested in: numeric, logical, character
mode(x) 

# there are many other ways to look at the data type. These are typically more low-level.
class(x)
typeof(x)
storage.mode(x)

#' ##  3. Subtract 5 from the 2nd, 4th, 6th, etc. element in x.

# using the index
y <- x
y[c(2, 4, 6, 8, 10)] <- y[c(2, 4, 6, 8, 10)] - 5
y

# or with recycling
x - c(0,5)

#' ## 4. Compute the sum and the average for x (there are functions for that).

sum(x)
mean(x)

#' ## 5. Reverse the order of the elements in x.

rev(x)

#' 6. Find out which numbers in x are negative.

x < 0

# select the elements < 0
x[x < 0]

# get the index
which(x < 0)


#' ## 7. Remove all entries with negative numbers from x.

x <- x[!(x < 0)]
x

#' # 8. How long is x now (there is a function).

length(x)

#' ## 9. Remove x from the environment/workspace (session).

rm(x)
# or use the Environment tab in RStudio

#' # 10. Create the a vector of strings containing CSE 8001, CSE 8002, ..., CSE 8100 using paste.

# recycle "CSE"
paste("CSE", 8001:8100)


# without the space
paste("CSE", 8001:8100, sep = "")
