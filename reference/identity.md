# The identity element

Create and test for the identity element

## Usage

``` r
is.id(x)
id(n)
# S3 method for class 'free'
is.id(x)
```

## Arguments

- x:

  Object of class `free`

- n:

  Strictly positive integer

## Details

Function `id()` returns a vector of `n` free objects, all of which are
the identity element. Do not ask what happens if \\n=0\\.

Function `is.id()` returns a Boolean indicating whether an element is
the identity or not. The identity can also be generated using
`as.free(0)`.

## Author

Robin K. S. Hankin

## Examples

``` r
id()
#> [1] 0
as.free(0)   # convenient R idiom for creating the identity
#> [1] 0

x <- rfree(10,3)
stopifnot(all(x == x + as.free(0)))
stopifnot(all(is.id(x-x)))
```
