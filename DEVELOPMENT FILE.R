rm(list=ls())
library(devtools)
library(roxygen2)

setwd("~/GitHub/Midterm")

current.code <- as.package("midterm")
load_all(current.code)
document(current.code)


##examples
jonah = new("Rasch", name = "Jonah", a = c(5,5,5,10,15), y = c(1,1,1,0,0))
probability(jonah, 8)
likelihood(jonah, 8)
prior(8)
eap(jonah)
print(jonah)
likelihood(jonah, 0)

##Will not work (should trigger validation issues)

jonah1 = new("Rasch", name = "Jonah", a = c(5,5,5,10,15,20), y = c(1,1,1,0,0))
jonah2 = new("Rasch", name = "Jonah", a = c(5,5,5,10,15), y = c(1,1,2,0,0))



