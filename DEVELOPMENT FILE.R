rm(list=ls())
library(devtools)
library(roxygen2)

setwd("~/GitHub/Midterm")

current.code <- as.package("midterm")
load_all(current.code)
document(current.code)


##examples
jonah = new("Rasch", name = "Jonah", a = c(.3,.2,1,3,4), y = c(1,1,1,0,0))
probability(jonah, 1)
likelihood(jonah, 1)
prior(1)
eap(jonah)
print(jonah)
