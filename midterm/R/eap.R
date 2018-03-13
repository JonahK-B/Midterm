#' EAP
#'
#' @param raschObj a rasch object representing the student in question
#' @param lower The lower bound of integration, defaults to -6
#' @param upper The upper bound of integration, defaults to 6
#'
#'
#' @return A best estimate of theta based on the student's test answers
#' @author Jonah Klein-Barton
#' @note This function as written will only return zero, as the numerator is a symmetrical function around zero, 
#' with int(f(x)) from (-6,0) equaling -int(f(x)) from (0,6). However, this function is written as Montgomery gave it to us as best as I can tell, 
#' and I've checked all of the functions which it calls.
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
            myNumerator <- integrate(myBaseNumerator, lower, upper)$value
            myDenominator <- integrate(myBaseDenominator, lower, upper)$value
            expectedAbility <- myNumerator/myDenominator
            return(expectedAbility)
          }
)


