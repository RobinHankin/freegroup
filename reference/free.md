# Objects of class `free`

Generate, and test for, objects of class `free`

## Usage

``` r
free(x)
as.free(x)
is.free(x)
list_to_free(x)
```

## Arguments

- x:

  Function `free()` needs either a two-row matrix, or a list of two-row
  matrices; function `as.free()` attempts to coerce different types of
  argument before passing to `free()` (possibly via `list_to_free()`)

## Details

The basic structure of an element of the free group is a two-row matrix.
The top row is the symbols (1=a, 2=b, 3=c, etc) and the bottom row is
the corresponding power. Thus \\a^2ba^{-1}c^9\\ would be

    > rbind(c(1,2,1,3),c(2,1,-1,9))
         [,1] [,2] [,3] [,4]
    [1,]    1    2    1    3
    [2,]    2    1   -1    9
    >

Function `free()` needs either a two-row matrix or a list of two-row
matrices. It is the only place in the package that sets the class of an
object to `free`. Function `as.free()` is a bit more user-friendly and
tries a bit harder to do the Right Thing.

The package uses `setOldClass("free")` for the `dot` methods.

## Author

Robin K. S. Hankin

## See also

[`char_to_free`](https://robinhankin.github.io/freegroup/reference/char_to_free.md)

## Examples

``` r
free(rbind(1:5,5:1))
#> [1] a^5.b^4.c^3.d^2.e

x <- rfree(10,3)
x
#>  [1] a^-1.b^2.c     a^2.c^2.b^-1   b^-2.c^-3.b^-2 a^-1.b^-1      b^2.c^-2.b^2  
#>  [6] a^2.b^2        c^-2.a^-2      b^-1.a.c^3     a^-1.c^3.b^2   c^3.a^-3.b^2  
x+x
#>  [1] a^-1.b^2.c.a^-1.b^2.c     a^2.c^2.b^-1.a^2.c^2.b^-1
#>  [3] b^-2.c^-3.b^-4.c^-3.b^-2  a^-1.b^-1.a^-1.b^-1      
#>  [5] b^2.c^-2.b^4.c^-2.b^2     a^2.b^2.a^2.b^2          
#>  [7] c^-2.a^-2.c^-2.a^-2       b^-1.a.c^3.b^-1.a.c^3    
#>  [9] a^-1.c^3.b^2.a^-1.c^3.b^2 c^3.a^-3.b^2.c^3.a^-3.b^2
x-x
#>  [1] 0 0 0 0 0 0 0 0 0 0
x[1:5]*(1:5)
#> [1] a^-1.b^2.c                                      
#> [2] a^2.c^2.b^-1.a^2.c^2.b^-1                       
#> [3] b^-2.c^-3.b^-4.c^-3.b^-4.c^-3.b^-2              
#> [4] a^-1.b^-1.a^-1.b^-1.a^-1.b^-1.a^-1.b^-1         
#> [5] b^2.c^-2.b^4.c^-2.b^4.c^-2.b^4.c^-2.b^4.c^-2.b^2


as.free(c(4,3,2,2,2))
#> [1] d.c.b^3
as.free("aaaabccccaaaaa")
#> [1] a^4.b.c^4.a^5
as.free(c("a","A","abAAA"))
#> [1] a        a^-1     a.b.a^-3
```
