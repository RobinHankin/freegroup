\name{abc}
\alias{abc}
\title{Create an alphabetical free group element}
\description{Create a simple free group element}
\usage{
abc(n)
}
\arguments{
  \item{n}{An integer specifying the length of the word; if a vector,
    return the appropriate free vector}
}
\author{Robin K. S. Hankin}
\examples{
abc(8)

rfree(10,3) + abc(1:10) + rfree(10,2)

}
