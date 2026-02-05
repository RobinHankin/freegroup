# Primitive elements of the free algebra

A primitive word is one that is not of the form `a^m` for any \\m\>1\\.
The concept is used in Lyndon and Schutzenberger 1962.

## Usage

``` r
is.primitive(x)
is.power(d,n)
```

## Arguments

- x:

  Freegroup object, coerced to Tietze form

- d:

  Numeric vector

- n:

  Integer

## Details

Function `is.primitive()` returns a boolean vector indicating whether
the elements of its argument are primitive.

Function `is.power()` is a lower-level helper function. `is.power(d,n)`
determines whether `d` is an `n`-th power (that is, `d` may be written
as `n` copies of some numeric vector).

Thus `is_power(c(4,5,7,4,5,7,4,5,7,4,5,7),4)` returns `TRUE` because its
primary argument is indeed a fourth power (of `c(4,5,7)`).

## Value

Returns a boolean.

## References

R. C. Lyndon and M. P. Schutzenberger 1962. “The equation \\a^M=b^Nc^P\\
in a free group”. Michigan Mathematical Journal, 9(4): 289–298.

## Author

Robin K. S. Hankin. The code for finding the factors of an integer was
(somewhat more than) inspired by the
[numbers](https://CRAN.R-project.org/package=numbers) package.

## Examples

``` r
is.primitive(as.free(c("a","aaaa", "aaaab", "aabaab", "aabcaabcaabcaabc")))
#> [1]  TRUE FALSE  TRUE FALSE FALSE

is.power(c(7,8,4,7,8,4,7,8,4,7,8,4),4)
#> [1] TRUE


table(is.primitive(rfree(100)))
#> 
#> FALSE  TRUE 
#>     9    91 


## primitive with >1 symbols is rare:
x <- rfree(1000)
x[!is.primitive(x) & number(x)>1]
#> [1] c^-1.d.c^-1.d
##  try x <- rfree(10000) [but this takes a long time]

```
