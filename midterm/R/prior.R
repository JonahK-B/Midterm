#' prior
#'
#' @param theta a numeric representing a quess at the student's ability level
#'
#'
#' @return The height of the normal curve where x = theta, the mean is zero, and the standard deviation is three
#' @author Jonah Klein-Barton
#' @note none
#' @examples
#'
#'theta = 15
#'prior(15)
#'
#' @rdname prior
#' @export
setGeneric(name="prior",
           def=function(theta)
           {standardGeneric("prior")}
)

#' @export
setMethod(f="prior",
          definition=function(theta){
            height <- dnorm(theta,0,3)
            return(height)
          }
)

