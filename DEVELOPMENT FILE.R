rm(list=ls())
library(devtools)
library(roxygen2)

setwd("~/GitHub/Midterm")

current.code <- as.package("midterm")
load_all(current.code)
document(current.code)


##example
y <- c(1,2,3,3)
lambda <- 3

poisson.lik(lambda, y)
