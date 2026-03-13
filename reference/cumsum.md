# Cumulative sum

Cumulative sum of free vectors

## Usage

``` r
# S3 method for class 'free'
cumsum(x)
```

## Arguments

- x:

  Vector of class free

## Author

Robin K. S. Hankin

## See also

[`sum`](https://robinhankin.github.io/freegroup/reference/sum.md)

## Examples

``` r
abc(1:6)
#> [1] a           a.b         a.b.c       a.b.c.d     a.b.c.d.e   a.b.c.d.e.f
cumsum(abc(1:6))
#> [1] a                                        
#> [2] a^2.b                                    
#> [3] a^2.b.a.b.c                              
#> [4] a^2.b.a.b.c.a.b.c.d                      
#> [5] a^2.b.a.b.c.a.b.c.d.a.b.c.d.e            
#> [6] a^2.b.a.b.c.a.b.c.d.a.b.c.d.e.a.b.c.d.e.f

x <- rfree(10,2)
cumsum(c(x,-rev(x)))
#>  [1] 0                                   a^-1.b                             
#>  [3] a^-1.b.a^2.b                        a^-1.b.a^2.b^2                     
#>  [5] a^-1.b.a^2.b^2.a^2                  a^-1.b.a^2.b^2.a^2.b^-1            
#>  [7] a^-1.b.a^2.b^2.a^2.b^-1.a^2         a^-1.b.a^2.b^2.a^2.b^-1.a^-1       
#>  [9] a^-1.b.a^2.b^2.a^2.b^-1.a^-1.b^-1   a^-1.b.a^2.b^2.a^2.b^-1.a^-1.b^-2.a
#> [11] a^-1.b.a^2.b^2.a^2.b^-1.a^-1.b^-1   a^-1.b.a^2.b^2.a^2.b^-1.a^-1       
#> [13] a^-1.b.a^2.b^2.a^2.b^-1.a^2         a^-1.b.a^2.b^2.a^2.b^-1            
#> [15] a^-1.b.a^2.b^2.a^2                  a^-1.b.a^2.b^2                     
#> [17] a^-1.b.a^2.b                        a^-1.b                             
#> [19] 0                                   0                                  
```
