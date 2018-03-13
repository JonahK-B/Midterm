#' Rasch
#' 
#' A class representing a student's test answers
#' 
#' An object of the class `Rasch' has the following slots:
#' \itemize{
#' \item \code{name} The name of the student represetned by the Rasch function
#' \item \code{a} A vector of length n containing numbers which represetn the difficulty of each question
#' \item \code{y} An answer vector of length n, where yi = 1 if they got the question correct and 0 if they got the question incorrect
#' 
#' }
#'
#' @author Jonah Klein-Barton: \email{jonahkleinbarton@@gmail.com}
#' @aliases Rasch-class initialize
#' @rdname Rasch
#' @export
setClass(Class="Rasch", 
         representation = representation(
           name = "character",
           a = "numeric",
           y = "numeric"
         ),
         prototype = prototype(
           name = c(),
           a = c(),
           y = c()
         )
)
#' @export
setMethod("initialize", "Rasch", 
          function(.Object, ...){
            value=callNextMethod()
            return(value)
          }
) 
