#' ---
#' title: "Exercise Solutions -- Objects, Lists and Data.Frames"
#' author: "Michael Hahsler"
#' output:
#'  html_document:
#'    toc: true
#'    theme: yeti
#'    highlight: zenburn
#' ---

#' ## 1. Create `x` by `x <- runif(100)`. Write a function with the name `avg_gt` with two formal arguments: a vector `x` and a value `gt`. The functions computes the average of the values greater than `gt` in `x`. Write a version with a loop and if and one version without loops and if statements.
#'
#' The R way: Select as subset and apply mean.
avg_gt <- function(x, gt) {
  mean(x[x > gt])
}

#' Using a loop that iterates over the vector (don't do this, it is very slow)
avg_gt_loop <- function(x, gt) {
  c <- 0 # counter
  s <- 0 # sum
  for(y in x) {
    if(y > gt) { 
      s <- s + y
      c <- c + 1
    }
  }
  
  s/c
}  

#' Using a loop that uses an index to iterate over the vector (don't do this, it is even slower)
avg_gt_loop_index <- function(x, gt) {
  c <- 0 # counter
  s <- 0 # sum
  for(i in seq_len(length(x))) {
    if(x[i] > gt) { 
      s <- s + x[i]
      c <- c + 1
    }
  }
  
  s/c
}  


x <- runif(100)

#' with gt = 0.5, we should get something like .75.
avg_gt(x, .5)
avg_gt_loop(x, .5)
avg_gt_loop_index(x, .5)

#' How fast are the implementations on a larger set of data?
library(microbenchmark)
x <- runif(10000)

rbind(
  microbenchmark(avg_gt(x, .5)),
  microbenchmark(avg_gt_loop(x, .5)),
  microbenchmark(avg_gt_loop_index(x, .5))
)

#' ## 2. Create a list with 5 numeric vectors (lengths and values of your choice). Sort all vectors in the list. Hint: see sort().

x <- list(
  a = 1:10,
  b = runif(n = 5),
  c = sample(seq_len(1000), 7),
  d = 5:1,
  e = numeric(0)
)

x
str(x)
#' _Note:_ R creates/stores sequences internally as integers. 
#'
#' Apply sort to each element of the list
lapply(x, sort)
lapply(x, sort, decreasing = TRUE) # decreasing is passed on to sort

#' ## 3. Write a function that computes the smallest value in each column of a given matrix. Create a random 5 x 5 matrix to test the function.

x <- matrix(runif(n = 5*5), nrow = 5, ncol = 5)
x

#' Apply the minimum function to columns (`MARGIN = 2`)
apply(x, MARGIN = 2, min)
