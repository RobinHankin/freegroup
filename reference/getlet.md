# Get letters of a freegroup object

Get the symbols in a freegroup object

## Usage

``` r
getlet(x)
```

## Arguments

- x:

  Object of class `free`

## Author

Robin K. S. Hankin

## Note

By default, return a list with elements corresponding to the elements of
`x`. But, if object `x` is of length 1, a vector is returned. The result
is sorted for convenience.

## Examples

``` r
(x <- rfree(6,7,3))
#> [1] b^-2.a^-1.c^-5.b^-5     a^14.c^-3.b^7.a^-2      a^-2.c^3.b^7.c^5       
#> [4] c^-3.b.c^-2.a^-7        b.a^7.b^2.a.b^4.c^-5    c^-7.a^7.b^-7.c^-2.b^-5

getlet(x)
#> [[1]]
#> [1] 1 2 3
#> 
#> [[2]]
#> [1] 1 2 3
#> 
#> [[3]]
#> [1] 1 2 3
#> 
#> [[4]]
#> [1] 1 2 3
#> 
#> [[5]]
#> [1] 1 2 3
#> 
#> [[6]]
#> [1] 1 2 3
#> 

as.free(getlet(x))  
#> [1] a.b.c a.b.c a.b.c a.b.c a.b.c a.b.c

identical(as.free(getlet(abc(1:26))), abc(1:26))
#> [1] TRUE
```
