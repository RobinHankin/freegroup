\name{size}
\alias{size}
\alias{total}
\alias{number}
\title{
Bignesses of a free object}
\description{Various metrics to say how \dQuote{big} a free object is}
\usage{
size(a)
total(a)
number(a)
}
\arguments{
  \item{a}{Vector of free group objects}
}
\details{

  \itemize{

    \item The \dQuote{size} of an object is the number of symbols in it;
    
    \item The \dQuote{total} of an object is the sum of the absolute
    values of its powers
    
    \item The \dQuote{number} of an object is the number of distinct symbols
    in it
  }
  
  Thus \code{size(a^2ba)=3}, \code{total(a^2ba)=4}, and
  \code{number(a^2ba)=2}.
  
}
\value{These functions return an integer vector.}
\author{Robin K. S. Hankin}
\note{
I would like to thank Murray Jorgensen for his insightful comments which
inspired this functionality.
}
\seealso{\code{\link{abs}}}
\examples{


a <- rfree(20,6,4)
size(a)
total(a)
number(a)



a <- rfree(20,6,4)
b <- rfree(20,6,4)

## Following should all be TRUE
size(a+b)   <= size(a)  + size(b)
total(a+b)  <= total(a) + total(b)
number(a+b) <= number(a)+ number(b)




}
