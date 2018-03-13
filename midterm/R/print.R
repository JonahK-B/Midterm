#' print
#' 
#' @param x a rasch object representing the student in question
#'
#'
#' @return Prints the students name and the output of their respective EAP predicted ability (theta)
#' @author Jonah Klein-Barton
#' @note none
#' @examples
#'
#'jonah = new("Rasch", name = "Jonah", a = c(5,5,5,10,25), y = c(1,1,0,1,0))
#'print(jonah)
#'
#' @rdname print

#' @export
setMethod(f="print", "Rasch",
          definition = function(x){
            return(list("Name" = x@name, "Expected Ability" = eap(x)))
          }
)
