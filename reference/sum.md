# Repeated summation by concatenation

Concatenates its arguments to give a single free object

## Usage

``` r
# S3 method for class 'free'
sum(..., na.rm = FALSE)
```

## Arguments

- ...:

  Objects of class `free`, to be summed

- na.rm:

  Boolean, indicating whether to ignore `NA` entries (currently ignored)

## Details

Function `sum()` concatenates its arguments and gives a single element
of the free group. It works nicely with
[`rev()`](https://rdrr.io/r/base/rev.html), see the examples. Note that
`sum(x,y)` is not the same as `x+y`.

## Author

Robin K. S. Hankin

## Note

The package uses additive notation, but it is easy to forget this and
wonder why idiom like `prod(rfree())` does not work as desired. Of
course, the package using additive notation means that one probably
wants `sum(rfree())`.

## Examples

``` r
(x <- rfree(10,3))
#>  [1] a^-2.c.b     a^2.b^-2.a^2 c^-3.b.a^-1  b^5          b^-2.a^-6   
#>  [6] 0            c^-1.a^5     c^-3.a^-1    b^-4.a^-1    b^-3.c.a    
sum(x)
#> [1] a^-2.c.b.a^2.b^-2.a^2.c^-3.b.a^-1.b^3.a^-6.c^-1.a^5.c^-3.a^-1.b^-4.a^-1.b^-3.c.a
abelianize(sum(x))
#> [1] a^-1.b^-4.c^-5

(y <- rfree(10,6))
#>  [1] c^3.d^4.a.b^-2.f^4          e^-3.c^-5.e^5.f^-3.c^-3    
#>  [3] f^4.b^-1.d^8.e.f^3          e^-5.a^2.c^2.a.e^2.d^-3    
#>  [5] a^14.e^3                    a^3.f^9.c^-1.e.d^-4        
#>  [7] c^-6.e^-1.b^4.d^-6.b^3.d^-3 b^-6.a^5.d^2.b^-5.c^-3.e^4 
#>  [9] c^4.f^-3.d^-3.e^-4.f^4      e^2.a^-6.f^-2.d.e^-5.b^2   

sum(x,y)
#> [1] a^-2.c.b.a^2.b^-2.a^2.c^-3.b.a^-1.b^3.a^-6.c^-1.a^5.c^-3.a^-1.b^-4.a^-1.b^-3.c.a.c^3.d^4.a.b^-2.f^4.e^-3.c^-5.e^5.f^-3.c^-3.f^4.b^-1.d^8.e.f^3.e^-5.a^2.c^2.a.e^2.d^-3.a^14.e^3.a^3.f^9.c^-1.e.d^-4.c^-6.e^-1.b^4.d^-6.b^3.d^-3.b^-6.a^5.d^2.b^-5.c^-3.e^4.c^4.f^-3.d^-3.e^-4.f^4.e^2.a^-6.f^-2.d.e^-5.b^2
sum(x,y) == sum(sum(x),sum(y))
#> [1] TRUE
x+y  # not the same!
#>  [1] a^-2.c.b.c^3.d^4.a.b^-2.f^4          a^2.b^-2.a^2.e^-3.c^-5.e^5.f^-3.c^-3
#>  [3] c^-3.b.a^-1.f^4.b^-1.d^8.e.f^3       b^5.e^-5.a^2.c^2.a.e^2.d^-3         
#>  [5] b^-2.a^8.e^3                         a^3.f^9.c^-1.e.d^-4                 
#>  [7] c^-1.a^5.c^-6.e^-1.b^4.d^-6.b^3.d^-3 c^-3.a^-1.b^-6.a^5.d^2.b^-5.c^-3.e^4
#>  [9] b^-4.a^-1.c^4.f^-3.d^-3.e^-4.f^4     b^-3.c.a.e^2.a^-6.f^-2.d.e^-5.b^2   

sum(x,-x)
#> [1] a^-2.c.b.a^2.b^-2.a^2.c^-3.b.a^-1.b^3.a^-6.c^-1.a^5.c^-3.a^-1.b^-4.a^-1.b^-3.c.a.b^-1.c^-1.b^2.a^-1.b^-1.c^3.b^-5.a^6.b^2.a^-5.c.a.c^3.a.b^4.a^-1.c^-1.b^3
sum(x,rev(-x))
#> [1] 0

z <- alpha(26)
stopifnot(sum(x^z) == sum(x)^z)
```
