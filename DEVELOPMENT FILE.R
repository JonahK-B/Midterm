rm(list=ls())
library(devtools)
library(roxygen2)

setwd("~/GitHub/Midterm")

current.code <- as.package("midterm")
load_all(current.code)
document(current.code)


##examples
jonah = new("Rasch", name = "Jonah", a = c(5,5,5,10,25), y = c(1,1,1,1,1))
probability(jonah, 15)
likelihood(jonah, 15)
prior(15)
eap(jonah)
print(jonah)
