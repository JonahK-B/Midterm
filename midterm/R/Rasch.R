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

#'@export
setValidity("Rasch", function(object){
  test1 <- (length(object@a) == length(object@y))
  test2 <- is.element(FALSE,(sapply(object@y, function(x) if(x==1 | x==0){TRUE} else{FALSE})))
  if(!test1){return("a and y must be the same length")}
  if(test2){return("y must be a vector of 0 and 1, with 0 representing a wrong answer and 1 representing a right answer")}
}
)

