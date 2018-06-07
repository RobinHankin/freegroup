\name{keep}
\alias{keep}
\alias{drop}
\alias{drop.free}
\title{Keep or drop symbols}
\description{Keep or drop symbols}
\usage{
keep(a, yes)
drop(a, no)
}
\arguments{
  \item{a}{Object of class \code{free}}
  \item{yes,no}{Specification of symbols to either keep (yes) or drop
    (no)}
}
\author{Robin K. S. Hankin}
\note{
  Function \code{keep()} needs an explicit \code{return()} to prevent it
  from returning invisibly.

  The functions are not vectorised.

  These functions have nothing in common with APL's
  \code{take()} and \code{drop()}.
}
\examples{
x <- rfree(10,5,8)

keep(x,abc(4))           # keep only symbols a,b,c,d
drop(x,as.free('cde'))   # drop symbols c,d,e

x[1:4] \%<>\% keep(alpha(3))  # keep only abc in first 4 elements of x



}
