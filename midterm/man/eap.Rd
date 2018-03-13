% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eap.R
\name{eap}
\alias{eap}
\title{EAP}
\usage{
eap(raschObj, lower = -6, upper = 6)
}
\arguments{
\item{raschObj}{a rasch object representing the student in question}

\item{lower}{The lower bound of integration, defaults to -6}

\item{upper}{The upper bound of integration, defaults to 6}
}
\value{
A best estimate of theta based on the student's test answers
}
\description{
EAP
}
\note{
none
}
\examples{

jonah = new("Rasch", name = "Jonah", a = c(5,5,5,10,25), y = c(1,1,0,1,0))
eap(jonah)

}
\author{
Jonah Klein-Barton
}