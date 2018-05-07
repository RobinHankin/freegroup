\name{inverse}
\alias{inverse}
\title{Inverses of free  group elements}
\description{Inverses of free  group elements}
\usage{
\method{free}{inverse}(e1)
\method{free}{matrix}(e1)
}
\arguments{
  \item{e1}{An object of class \code{free}, or a two-row matrix}
}
\details{
The basic idea is that
\eqn{\left(ab\right)^{-1}=b^{-1}a^{-1}}{(ab)^-1=b^-1a^-1}.  The R idiom
is straightforward: take the negative of the powers and write the terms
in reverse order.
}
\author{Robin K.  S. Hankin}
\note{
The code is inefficient: it attempts to reduce the output.  But this is
unncecessary, for a reduced word must have a reduced inverse.
}
\examples{
 M <- rbind(1:10,10:1)
 inverse(M)
inverse(free(M))

x <- rfree(10,3)
inverse(x)

stopifnot(all(is.identity(x+inverse(x))))
