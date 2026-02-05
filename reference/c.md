# Concatenation of free objects

Concatenate free objects together

## Usage

``` r
# S3 method for class 'free'
c(...)
# S3 method for class 'free'
rep(x, ...)
```

## Arguments

- ...:

  In the method for [`c()`](https://rdrr.io/r/base/c.html), objects to
  be concatenated. Should all be of the same type

- x:

  In the method for [`rep()`](https://rdrr.io/r/base/rep.html), a free
  object

## Author

Robin K. S. Hankin

## Examples

``` r
(x <- abc(1:3))
#> [1] a     a.b   a.b.c
(y <- alpha(22:25))
#> [1] v w x y

c(x,y,x,x)
#>  [1] a     a.b   a.b.c v     w     x     y     a     a.b   a.b.c a     a.b  
#> [13] a.b.c


## NB: compare
rep(x,2)  
#> [1] a     a.b   a.b.c a     a.b   a.b.c
x*2  
#> [1] a^2         a.b.a.b     a.b.c.a.b.c
```
