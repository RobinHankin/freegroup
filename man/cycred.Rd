\name{cycred}
\alias{cycred}
\alias{cyclic}
\alias{cyclically}
\alias{cyclically_reduced}
\alias{cyclic_reduction}
\alias{is.cyclically.reduced}
\alias{is.cyclically.reduced2}
\alias{as.cyclically_reduced}
\alias{cyclically_reduce_tietze}
\alias{is.conjugate}
\alias{is_conjugate_single}
\title{Cyclic reductions of a word}
\description{Functionality to cyclically reduce words and detect conjugacy}
\usage{
is.cyclically.reduced(a)
is.cyclically.reduced2(a)
as.cyclically_reduced(a)
cyclically_reduce_tietze(p)
is.conjugate(x,y)
is_conjugate_single(x,y)
}
\arguments{
  \item{a,x,y}{An object of class \code{free}}
  \item{p}{Integer vector corresponding to Tietze form of a word}
}
\details{

  A \code{free} object is \dfn{cyclically reduced} iff every cyclic
  permutation of the word is reduced.  A reduced word is cyclically
  reduced iff the first letter is not the inverse of the last one.  A
  reduced word is cyclically reduced if the first and last symbol differ
  (irrespective of power) or, if identical, have powers of opposite
  sign.  For example, \code{abac} and \code{abca} are cyclically reduced
  but \code{abca^{-1}} is not.  Function \code{is.cyclically.reduced()}
  tests for this.  Function \code{is.cyclically.reduced2()} gives
  identical output; it uses slicker but marginally slower R idiom.

  Function \code{as.cyclically_reduced()} takes a vector of free objects
  and returns the elementwise cyclically reduced equivalents.
  
  Whether the identity should be regarded as cyclically reduced is
  problematic.  On the one hand the identity cannot be shortened by a
  combination of cyclic permutation followed by reduction; but on the
  other, I cannot exhibit a symbol at the start of the identity which
  can be reduced by juxtaposition with a symbol at the end (because
  there are no symbols).  Currently it returns \code{NA} but I am open
  to suggestions.

  Two words \eqn{a,b} are \dfn{conjugate} if there exists a \eqn{x} such
  that \eqn{ax=xb} (or equivalently \eqn{a=x^{-1}bx}{a=x^-1 b x}).  This
  is detected by function \code{is.conjugate()}.  Functions
  \code{is_conjugate_single()} and \code{cyclically_reduce_tietze()} are
  lower-level helper functions.
    
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{reduce}}}
\examples{

as.cyclically_reduced(abc(1:9) - abc(9:1))

 a <- rfree(1000,3)
 all(size(as.cyclically_reduced(a)) <= size(a))
 all(total(as.cyclically_reduced(a)) <= total(a))
 all(number(as.cyclically_reduced(a)) <= number(a))

 x <- rfree(1000,2)
 y <- as.free('ab')
 table(conjugate=is.conjugate(x,y),equal=(x==y))  # note zero at top right

}