\name{alpha}
\alias{alpha}
\alias{abc}
\alias{alphabet}
\title{Alphabetical free group elements}
\description{Produces simple vectors of free group elements based on the
  alphabet}
\usage{
alpha(v)
abc(v)
}
\arguments{
  \item{v}{Vector of integers}
}
\details{
  Function \code{alpha()} returns a vector of single-letter elements.
  Function \code{abc()} returns a vector of multiple elements.
}
\author{Robin K. S. Hankin}
\examples{
alpha(5)  # just the single letter 'e'
abc(5)    # product of a,b,c,d,e

alpha(1:26)  # the whole alphabet; c

all(alpha(1:26) == as.free(letters))  # should be TRUE

z <- alpha(26)  # variable 'z' is symbol 26, aka 'z'.
abc(1:10) ^ z

abc(-5:5)
alpha(-5:5)
sum(abc(-5:5))


## bear in mind that the symbols used are purely for the print method:
jj <- LETTERS[1:10]
options(symbols = apply(expand.grid(jj,jj),1,paste,collapse=""))
alpha(c(66,67,68,69))   # sensible output
options(symbols=NULL)   # restore to symbols to default letters
alpha(c(66,67,68,69))   # print method not very helpful now
}
