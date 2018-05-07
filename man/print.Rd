\name{print}
\alias{print.free}
\title{Print free objects}
\description{Print methods for free objects}
\usage{print.free(x,...)}
\arguments{
  \item{x}{Object of class free}
  \item{...}{Further arguments, currently ignored}
}
\details{

}
\author{Robin K. S. Hankin}
\note{
The default print method uses multiplicative notation (powers) which is
inconsistent with the juxtaposition method \dQuote{\code{+}}.
}
\examples{

## default symbols:

alphabet(26)
rfree(1,10)


# if we need more than 26:

options(symbols=apply(expand.grid(letters[1:10],letters[1:10]),1,paste,collapse=""))
rfree(1,100)

options(symbols=NULL)  #   NULL is interpreted as letters

}
