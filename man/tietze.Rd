\name{tietze}
\alias{tietze}
\alias{Tietze}
\alias{tietze.matrix}
\alias{tietze.free}
\title{Tietze form for free group objects}
\description{
Translate an object of class free  to Tietze form}
\usage{
\method{tietze}{free}(x)
\method{tietze}{matrix}(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{Object of class matrix or free}
}
\author{Robin K. S. Hankin}
\examples{
tietze(rfree(10,3))
}