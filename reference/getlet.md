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
#> [1] c^-5.a^-4.b^-6.a^12             c^-6.a^-1.c^7.b^-1.a^-2.c^3.b^4
#> [3] c^-1.b.c^8.b^-6.c               c^-2.b^5.c^-6.b^-5.a^6         
#> [5] b^-4.c^5.a^-7.b^7               a^2.c^-5.a^-1.c^6.a^3.c        

getlet(x)
#> [[1]]
#> [1] 1 2 3
#> 
#> [[2]]
#> [1] 1 2 3
#> 
#> [[3]]
#> [1] 2 3
#> 
#> [[4]]
#> [1] 1 2 3
#> 
#> [[5]]
#> [1] 1 2 3
#> 
#> [[6]]
#> [1] 1 3
#> 

as.free(getlet(x))  
#> [1] a.b.c a.b.c b.c   a.b.c a.b.c a.c  

identical(as.free(getlet(abc(1:26))), abc(1:26))
#> [1] TRUE
```
