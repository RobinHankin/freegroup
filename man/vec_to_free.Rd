\name{vec_to_free}
\alias{vec_to_free}
\title{Coerce an integer vector to a free object}
\description{Coerce an integer vector to free.  Negative integers
  correspond to negative powers of their absolute value.}
\usage{
vec_to_free(x)
}
\arguments{
  \item{x}{An integer vector}
}
\author{Robin K. S. Hankin}
\examples{
vec_to_free(1:9)
vec_to_free(c(1,2,-2,3))   # reduced automatically
vec_to_free(c(1,2,3,0,-2)) # zeros are ignored
as.free(1:6)   

}