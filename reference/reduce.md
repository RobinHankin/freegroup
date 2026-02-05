# Reduction of a word to reduced form

Given a word, remove redundant zero-power terms, and consolidate
adjacent like terms into a single power

## Usage

``` r
reduce(a)
is_reduced(a)
remove_zero_powers(a)
consolidate(a)
is_proper(a)
```

## Arguments

- a:

  An object of class `free`

## Details

A word is reduced if no symbol appears next to its own inverse and no
symbol has zero power. The essence of the package is to reduce a word
into a reduced form. Thus \\a^2b^{-1}ba\\ will transformed into \\a^3\\.

In the package, reduction happens automatically at creation, in function
[`free()`](https://robinhankin.github.io/freegroup/reference/free.md).

Apart from `is_proper()`, the functions all take a `free` object, but
the meat of the function operates on a single two-row matrix.

Reduction is carried out by repeatedly consolidating adjacent terms of
identical symbol (function `consolidate()`), and removing zero power
terms (function `remove_zero_power()`) until the word is in reduced form
(function `is_reduced()`).

Function `is_proper()` checks to see whether a matrix is suitably formed
for passing to `reduce()`.

A `free` object is cyclically reduced iff every cyclic permutation of
the word is reduced. A reduced word is cyclically reduced iff the first
letter is not the inverse of the last one. A reduced word is cyclically
reduced if the first and last symbol differ (irrespective of power) or,
if identical, have powers of opposite sign. For example, `abac` and
`abca` are cyclically reduced but `abca^{-1}` is not. Function
[`is.cyclically.reduced()`](https://robinhankin.github.io/freegroup/reference/cycred.md)
tests for this, documented at `cycred.Rd`.

## Author

Robin K. S. Hankin

## See also

[`cycred`](https://robinhankin.github.io/freegroup/reference/cycred.md)

## Examples

``` r
## create a matrix:
(M <- rbind(c(1,2,3,3,2,3,2,1),c(1,2,3,-3,5,0,7,0)))
#>      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8]
#> [1,]    1    2    3    3    2    3    2    1
#> [2,]    1    2    3   -3    5    0    7    0

## call the print method (note non-reduced form):
as.character_free(M)
#> [1] "a.b^2.c^3.c^-3.b^5.c^0.b^7.a^0"

## show the effect of reduce():
as.character_free(reduce(M))
#> [1] "a.b^14"

## free() calls reduce() automatically:
free(M)
#> [1] a.b^14
```
