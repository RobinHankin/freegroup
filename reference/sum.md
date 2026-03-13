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
#>  [1] a^3.b^-3.c^3  a^3.c^-2.b^-3 c^2           a.c^-1        b^-1.a^-1    
#>  [6] b.a^4         c^2.b^-2.a^-3 b^-3          a^4           c^2.b        
sum(x)
#> [1] a^3.b^-3.c^3.a^3.c^-2.b^-3.c^2.a.c^-1.b^-1.a^-1.b.a^4.c^2.b^-2.a^-3.b^-3.a^4.c^2.b
abelianize(sum(x))
#> [1] a^11.b^-10.c^6

(y <- rfree(10,6))
#>  [1] e^-4.f^-1.d^3.f^6         e.a^4.b^2.a^2.f^6.b^-4   
#>  [3] f^-5.d^-6.f^3.e^-3        b^2.f^-4.a^-1.e^-6.d^6   
#>  [5] a^2.e^-4.b^-4.f.b^-1.e^-4 e^2.a^3.e^2.c^3.d^4      
#>  [7] b^-3.c^-4.e^-3.c^-5       d^2.f^4.b^-1.d^4         
#>  [9] c^6.b^5.e^-5.a^2.c^2.a    d^2.a^-2.d^4.a           

sum(x,y)
#> [1] a^3.b^-3.c^3.a^3.c^-2.b^-3.c^2.a.c^-1.b^-1.a^-1.b.a^4.c^2.b^-2.a^-3.b^-3.a^4.c^2.b.e^-4.f^-1.d^3.f^6.e.a^4.b^2.a^2.f^6.b^-4.f^-5.d^-6.f^3.e^-3.b^2.f^-4.a^-1.e^-6.d^6.a^2.e^-4.b^-4.f.b^-1.e^-2.a^3.e^2.c^3.d^4.b^-3.c^-4.e^-3.c^-5.d^2.f^4.b^-1.d^4.c^6.b^5.e^-5.a^2.c^2.a.d^2.a^-2.d^4.a
sum(x,y) == sum(sum(x),sum(y))
#> [1] TRUE
x+y  # not the same!
#>  [1] a^3.b^-3.c^3.e^-4.f^-1.d^3.f^6       a^3.c^-2.b^-3.e.a^4.b^2.a^2.f^6.b^-4
#>  [3] c^2.f^-5.d^-6.f^3.e^-3               a.c^-1.b^2.f^-4.a^-1.e^-6.d^6       
#>  [5] b^-1.a.e^-4.b^-4.f.b^-1.e^-4         b.a^4.e^2.a^3.e^2.c^3.d^4           
#>  [7] c^2.b^-2.a^-3.b^-3.c^-4.e^-3.c^-5    b^-3.d^2.f^4.b^-1.d^4               
#>  [9] a^4.c^6.b^5.e^-5.a^2.c^2.a           c^2.b.d^2.a^-2.d^4.a                

sum(x,-x)
#> [1] a^3.b^-3.c^3.a^3.c^-2.b^-3.c^2.a.c^-1.b^-1.a^-1.b.a^4.c^2.b^-2.a^-3.b^-3.a^4.c^2.b.c^-3.b^3.a^-3.b^3.c^2.a^-3.c^-1.b.a^-4.b^-1.a^3.b^2.c^-2.b^3.a^-4.b^-1.c^-2
sum(x,rev(-x))
#> [1] 0

z <- alpha(26)
stopifnot(sum(x^z) == sum(x)^z)
```
