#' likelihood
#'
#' @param raschObj a rasch object representing the student in question
#' @param theta a numeric representing a quess at the student's ability level
#'
#'
#' @return A number of how likely the proposed theta is to be correct
#'
#' @author Jonah Klein-Barton
#' @note none
#' @examples
#'
#'jonah = new("Rasch", name = "Jonah", a = c(5,5,5,10,25), y = c(1,1,0,1,0))
#'likelihood(jonah, 15)
#'
#' @rdname likelihood
#' @export
setGeneric(name="likelihood",
           def=function(raschObj, theta)
           {standardGeneric("likelihood")}
)

#' @export
setMethod(f="likelihood",
          definition=function(raschObj, theta){
            prod(probability(raschObj, theta)$PQ)
          }
)

