\name{alpha}
\alias{alpha}
\alias{alphabet}
\title{Single-symbol words}
\description{Produces a vector of single-symbol words}
\usage{
alpha(v)
}
\arguments{
  \item{v}{Vector of integers}
}
\author{Robin K. S. Hankin}
\examples{
alpha(1)  # just the letter 'a'

alpha(1:26)  # the whole alphabet; compare abc(1:16)

abc(1:10) ^ alpha(26)


}