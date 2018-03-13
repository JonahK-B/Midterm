#' EAP
#'
#' @param raschObj a rasch object representing the student in question
#' @param lower The lower bound of integration, defaults to -6
#' @param upper The upper bound of integration, defaults to 6
#'
#'
#' @return A best estimate of theta based on the student's test answers
#' @author Jonah Klein-Barton
#' @note none
#' @examples
#'
#'jonah = new("Rasch", name = "Jonah", a = c(5,5,5,10,25), y = c(1,1,0,1,0))
#'eap(jonah)
#'
#' @rdname eap
#' @export
setGeneric(name="eap",
           def=function(raschObj, lower = -6, upper = 6)
           {standardGeneric("eap")}
)

#' @export
setMethod(f="eap",
          definition=function(raschObj, lower, upper){
            myBaseNumerator <- function(x) (x*likelihood(raschObj, x)*prior(x))
            myBaseDenominator <- function(x) (likelihood(raschObj, x)*prior(x))
            myNumerator <- integrate(myBaseNumerator, lower, upper)
            myDenominator <- integrate(myBaseDenominator, lower, upper)
            testInt <- myNumerator$value/myDenominator$value
            return(testInt)
          }
)

eap(jonah)

myBaseNumerator <- function(x) (x*likelihood(jonah, x)*prior(x))
myBaseDenominator <- function(x) (likelihood(jonah, x)*prior(x))
myNumerator <- integrate(myBaseNumerator, -6, 6)
myDenominator <- integrate(myBaseDenominator, -6, 6)
testInt <- myNumerator$value/myDenominator$value
