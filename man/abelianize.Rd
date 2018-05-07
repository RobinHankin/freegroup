\name{abelianize}
\alias{abelianize}
\title{Abelianization of free group elements}
\description{
Return a modified free group element under the assumption of Abelianness}
\usage{
abelianize(x)
}
\arguments{
  \item{x}{An object of class \code{free}}
}
\author{Robin K. S. Hankin}
\examples{

x <- rfree(10,20,20)
abelianize(x)
}
