\name{reduce}
\alias{reduce}
\alias{remove_zero_powers}
\alias{is_reduced}
\title{
Reduction of a word to reduced form
}
\usage{
reduce(a)
is_reduced(a)
remove_zero_powers(a)
is.cyclically.reduced(a)
is.cyclically.reduced2(a)
consolidate(a)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{a}{An object of class \code{free}}
}
\details{

  The essence of the package is to reduce a word into a reduced
  form. Thus \eqn{a^2b^{-1}ba}{a^2b^-1ba} will transformed into
  \eqn{a^3}.

  In the package, reduction happens automatically at creation, in
  function \code{free()}.

  Reduction is carried out by repeatedly consolidating adjacent terms of
  identical symbol (function \code{consolidate()}), and removing zero
  power terms (function \code{remove_zero_power()}) until the word is in
  reduced form (function \code{is_reduced()}).

  The functions all take a \code{free} object, but the meat of the
  function operates on a single two-row matrix.

  
}
\author{Robin K. S. Hankin}
\examples{

## create a matrix:
M <- rbind(c(1,2,3,3,2,3,2,1),c(1,2,3,-3,5,0,7,0))

## call the print method (note non-reduced form):
as.character_free(M)

## show the effect of reduce():
as.character_free(reduce(M))

## free() calls reduce automatically:
free(M)
}