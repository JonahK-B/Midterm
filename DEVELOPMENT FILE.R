rm(list=ls())
library(devtools)
library(roxygen2)

setwd("~/GitHub/Midterm")

current.code <- as.package("midterm")
load_all(current.code)
document(current.code)


##examples
jonah = new("Rasch", name = "Jonah", a = c(5,5,5,10,15), y = c(1,1,1,0,0))
probability(jonah, 10)
likelihood(jonah, 10)
prior(10)
eap(jonah)
print(jonah)
likelihood(jonah, 0)
