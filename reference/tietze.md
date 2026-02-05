# Tietze form for free group objects

Translate an object of class `free` to and from Tietze form

## Usage

``` r
# S3 method for class 'free'
tietze(x)
# S3 method for class 'matrix'
tietze(x)
vec_to_matrix(x)
```

## Arguments

- x:

  Object to be converted

## Details

The Tietze form for a word is a list of integers corresponding to the
symbols of the word; typically \\a=1,b=2,c=3,d=4\\, etc. Negative
integers represent the inverses of the symbols. Thus `c^4.d^-2.a.c`
becomes `3 3 3 3 -4 -4 1 3`.

Function `vec_to_matrix()` is a low-level helper function that returns a
two-row integer matrix. If given `0` or `NULL`, it returns a two-row,
zero-column matrix.

## Author

Robin K. S. Hankin

## Examples

``` r
(x <- rfree(10,3))
#>  [1] c.b.c^2       c^-1.a^4      c^-2.a^-1.c   0             a^-2.c^2     
#>  [6] a^2.b^-6      c^-1.a^-3.b^3 c^-3.b^2.a^2  b^3.c^-3.a^-1 a^-3.b^-1    
tietze(x)
#> [[1]]
#> [1] 3 2 3 3
#> 
#> [[2]]
#> [1] -3  1  1  1  1
#> 
#> [[3]]
#> [1] -3 -3 -1  3
#> 
#> [[4]]
#> numeric(0)
#> 
#> [[5]]
#> [1] -1 -1  3  3
#> 
#> [[6]]
#> [1]  1  1 -2 -2 -2 -2 -2 -2
#> 
#> [[7]]
#> [1] -3 -1 -1 -1  2  2  2
#> 
#> [[8]]
#> [1] -3 -3 -3  2  2  1  1
#> 
#> [[9]]
#> [1]  2  2  2 -3 -3 -3 -1
#> 
#> [[10]]
#> [1] -1 -1 -1 -2
#> 

vec_to_matrix(c(1,3,-1,-1,-1,2))
#>      [,1] [,2] [,3] [,4] [,5] [,6]
#> [1,]    1    3    1    1    1    2
#> [2,]    1    1   -1   -1   -1    1

as.free(list(c(1,1,8),c(2,-4,-4)))
#> [1] a^2.h  b.d^-2

all(as.free(tietze(abc(1:30))) == abc(1:30))
#> [1] TRUE
```
