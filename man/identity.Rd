\name{identity}
\alias{identity}
\alias{is.identity}
\alias{neutral}
\title{The identity element}
\description{Create and test for the identity element}
\usage{
is.identity(x)
identity(n)
}
\arguments{
  \item{x}{Object of class \code{free}}
  \item{n}{Strictly positive integer}
}
\details{

Function \code{is.identity()} returns a Boolean indicating whether an
element is the identity or not.

Function \code{identity()} returns a vector of free objects, all of
which are the identity element.  Do not ask what happens if \eqn{n=0}.

}
\author{Robin K. S. Hankin}
\examples{
as.free(0)   # convenient R idiom for creating the identity

x <- rfree(10,3)
stopifnot(all(x == x + as.free(0)))
stopifnot(all(is.identity(x-x)))

}
