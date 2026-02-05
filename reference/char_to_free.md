# Convert character vectors to free objects

Convert character vectors to free objects

## Usage

``` r
char_to_matrix(x)
```

## Arguments

- x:

  A character vector

## Details

Function `char_to_matrix()` gives very basic conversion between
character vectors and free objects. Current functionality is limited to
strings like “`aaabaacd`”, which would give \\a^3ba^2cd\\. It would be
nice to take a string like “`a^3b^(-3)`” but this is not yet
implemented.

Function `char_to_free()` is a vectorized version that coerces output to
`free`.

## Note

The function is not particularly robust; for example, passing anything
other than letters a-z or A-Z will give possibly undesirable behaviour.

Upper-case letters A-Z are interpreted by `char_to_matrix()` as the
inverse of their corresponding lower-case equivalents. This behaviour is
inherited by `char_to_free()` and
[`as.free()`](https://robinhankin.github.io/freegroup/reference/free.md),
so that `as.free("A") == inverse(as.free("a"))`.

Function `char_to_free()` is consistent with the default print options
(which are that the symbols are the lowercase letters a-z). If you
change the symbols' names, for example
`options(freegroup_symbols=sample(letters))`, then things can get
confusing. The print method does not change the internal representation
of a `free` object, which is a list of integer matrices.

## Author

Robin K. S. Hankin

## See also

[`print.free`](https://robinhankin.github.io/freegroup/reference/print.md)

## Examples

``` r
char_to_matrix("aaabcABC")
#>    [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8]
#> jj    1    1    1    2    3    1    2    3
#> s     1    1    1    1    1   -1   -1   -1

rfree(10,3) + as.free('xxxxxxxxxxxx')
#>  [1] b^2.x^12           a.b^2.c^-1.x^12    c^-5.x^12          a^2.x^12          
#>  [5] c.a^-2.c^2.x^12    b^-1.x^12          a^2.c^-1.x^12      c^-4.x^12         
#>  [9] b^2.a^-3.b^-3.x^12 b^3.x^12          

as.free(letters)*7
#>  [1] a^7 b^7 c^7 d^7 e^7 f^7 g^7 h^7 i^7 j^7 k^7 l^7 m^7 n^7 o^7 p^7 q^7 r^7 s^7
#> [20] t^7 u^7 v^7 w^7 x^7 y^7 z^7

all(is.id(as.free(letters) + as.free(LETTERS)))
#> [1] TRUE


as.free('')  # identity element
#> [1] 0
```
