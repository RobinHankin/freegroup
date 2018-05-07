\name{free}
\alias{free}
\alias{as.free}
\alias{is.free}
\title{Objects of class \code{free}}
\description{Generate, and test for, objects of class \code{free}}
\usage{
free(x)
as.free(x)
is.free(x)
}
\arguments{
  \item{x}{A list of two-row matrices; function \code{as.free()}
    attempts to coerce different objects to \code{free}}
}
\details{
The basic structure of an element of the free group is a two-row
matrix.  The top row is the symbols (1=a, 2=b, 3=c, etc)  and the bottom
row is the corresponding power. Thus \eqn{a^2ba^{-1}}{a^2ba^-1} would be

\preformatted{
> rbind(c(1,2,1),c(2,1,-1))
     [,1] [,2] [,3]
[1,]    1    2    1
[2,]    2    1   -1
>
}



}
\author{Robin K. S. Hankin}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x) 
{
    if (is.matrix(x)) {
        x <- list(x)
    }
    stopifnot(all(unlist(lapply(x, is_proper))))
    x <- reduce(x)
    class(x) <- "free"
    return(x)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
