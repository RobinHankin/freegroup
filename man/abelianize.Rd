\name{abelianize}
\alias{abelianize}
\title{Abelianization of free group elements}
\description{Function \code{abelianize()} returns a word that is
equivalent to its argument under assumption of Abelianness.  The symbols
are placed in alphabetical order.}
\usage{abelianize(x)}
\arguments{
  \item{x}{An object of class \code{free}}
}
\details{
Abelianizing a free group element means that the symbols can commute
past one another.  Abelianization is vectorized.
}
\author{Robin K. S. Hankin}
\examples{

x <- as.free("aabAA")
x
abelianize(x)

x <- rfree(10,10,2)
x
abelianize(x)

p <- free(rbind(rep(1:5,4),rep(1:4,5)))
p
abelianize(p)
}
