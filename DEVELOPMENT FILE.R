rm(list=ls())
library(devtools)
library(roxygen2)

setwd("~/GitHub/Midterm")

current.code <- as.package("midterm")
load_all(current.code)
document(current.code)


##examples
jonah = new("Rasch", name = "Jonah", a = c(5,5,5,20,20), y = c(1,1,1,0,0))
probability(jonah, 5)
likelihood(jonah, 5)
prior(5)
eap(jonah)
print(jonah)
