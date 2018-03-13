#' probability
#'
#' @param rasch a rasch object representing the student in question
#' @param theta a numeric representing a quess at the student's ability level
#'
#'
#' @return A list containing P and PQ, where P represents the estimate that a student of the estimated ability would get the question correct, and PQ displays P if the student got the question and 1-P if they did not
#' @author Jonah Klein-Barton
#' @note none
#' @examples
#'
#'jonah = new("Rasch", name = "Jonah", a = c(5,5,5,10,25), y = c(1,1,0,1,0))
#'probability(jonah, 15)
#'
#' @rdname probability
#' @export
setGeneric(name="probability",
           def=function(rasch, theta)
           {standardGeneric("probability")}
)

#' @export
setMethod(f="probability",
          definition=function(rasch, theta){
            P <- sapply(rasch@a, function(x) ((exp(theta-x))/(1+exp(theta-x))))
            PQ <- sapply(rasch@y, function(x) if(x==1){((exp(theta-x))/(1+exp(theta-x)))} else{1-((exp(theta-x))/(1+exp(theta-x)))})
            return(list("P" = P, "PQ" = PQ))
          }
)


