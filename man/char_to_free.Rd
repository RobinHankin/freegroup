\name{char_to_free}
\alias{char_to_free}
\title{Convert character vectors to free objects}
\description{
Convert character vectors to free objects
}
\usage{
char_to_free(x)
}
\arguments{
  \item{x}{A character vector}
}
\details{

  Function \code{char_to_free()} gives very basic conversion between
  character vectors and free objects.

  Current functionality is limited to strings like
  \dQuote{\code{aaabaacd}}, which would give
  \eqn{a^3ba^2cd}{a^3.b.a^2.c.d}.  It would be nice to take a string
  like \dQuote{\code{a^3b^(-3)}} but this is not yet implemented.

}
\author{Robin K. S. Hankin}
\examples{

char_to_free("aaabacdcd")

}