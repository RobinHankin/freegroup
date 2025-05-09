\name{Ops.free}
\alias{Ops.free}
\alias{ops}
\alias{free_equal}
\alias{free_power}
\alias{free_repeat}
\alias{juxtapose}
\alias{inverse}
\alias{inverse.free}
\alias{inverse.matrix}
\title{Arithmetic Ops methods for the free group}
\description{
  Allows arithmetic operators to be used for manipulation of free group elements
  such as addition, multiplication, powers, etc
}
\usage{
\method{Ops}{free}(e1, e2)
free_equal(e1,e2)
free_power(e1,e2)
free_repeat(e1,n)
juxtapose(e1,e2)
\method{inverse}{free}(e1)
\method{inverse}{matrix}(e1)
}
\arguments{
  \item{e1,e2}{Objects of class \code{free}}
  \item{n}{An integer, possibly non-positive}
}
\details{

  The function \code{Ops.free()} passes binary arithmetic operators
  (\dQuote{\code{+}}, \dQuote{\code{-}}, \dQuote{\code{*}},
  \dQuote{\code{^}}, and \dQuote{\code{==}}) to the appropriate
  specialist function.

  There are two non-trivial basic operations: juxtaposition, denoted
  \dQuote{\code{a+b}}, and inversion, denoted \dQuote{\code{-a}}.  Note
  that juxtaposition is noncommutative and \code{a+b} will not, in
  general, be equal to \code{b+a}.

  All operations return a reduced word.

  The caret, as in \code{a^b}, denotes group-theoretic exponentiation
  (\code{-b+a+b}); the notation is motivated by the identities
  \code{x^(yz) == (x^y)^z} and \code{(xy)^z == x^z * y^z}, as in the
  \code{permutations} package.

  \strong{As an experimental feature} the package now accepts
  multiplicative notation, so these identities manifest in package idiom
  as written.  However, this renders distributivity incorrect so that
  \code{x*(y + z)} and \code{x*y + x*z} are not equal, in general
  [distributivity manifests as \code{x*c(y, z) == c(x*y, x*z)}].

  Multiplication between a free object \code{a} and an integer \code{n}
  (as in \code{a*n} or \code{n*a}) is defined as juxtaposing \code{n}
  copies of \code{a} and reducing.  Zero and negative values of \code{n}
  work as expected.

  Comparing a \code{free} object with a numeric does not make sense and
  idiom such as \code{rfree() > 4} will return an error.  Comparing a
  \code{free} object with another \code{free} object might be desirable
  [specifically, lexicographic ordering], but is not currently
  implemented.

}
\author{Robin K. S. Hankin}
\note{
  The package uses additive notation but multiplicative notation might
  have been better.
}
\examples{


x <- as.free(c("a","ab","aaab","abacc"))
y <- as.free(c("aa","BA","Bab","aaaaa"))
x
y


x + x
x + y
x + as.free("xyz")

x+y == y+x    # not equal in  general

x*5 == x+x+x+x+x      # always true

x + alpha(26)

x^y
}
