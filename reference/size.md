# Bignesses of a free object

Various metrics to describe how “big” a free object is

## Usage

``` r
size(a)
total(a)
number(a)
bigness(a)
```

## Arguments

- a:

  Vector of free group objects

## Details

- The size of an object is the number of pure powers in it (this is the
  number of columns of the matrix representation of the word)

- The total of an object is the sum of the absolute values of its powers

- The number of an object is the number of distinct symbols in it

Thus `size(a^2ba)=3`, `total(a^2ba)=4`, and `number(a^2ba)=2`.

Function `bigness()` is a convenience wrapper that returns all three
bigness measures.

## Value

These functions return an integer vector.

## Author

Robin K. S. Hankin

## Note

I would like to thank Murray Jorgensen for his insightful comments which
inspired this functionality.

## See also

[`abs`](https://robinhankin.github.io/freegroup/reference/abs.md)

## Examples

``` r
(a <- rfree(20,6,4))
#>  [1] b^-3.d.b^-5.a^-5.c^3.d      d^2.b^-8                   
#>  [3] a^-3.b^4                    c^-3.b^-3.d^-3             
#>  [5] b^8.a^4.c^-1.b^5.d^-5       a^-2.b^2.a^6.c^-6.a^-3.c^-5
#>  [7] a^4.c^3.b^-3.c^-6           a^-3.b^9.a^3.b^-5          
#>  [9] a^6.d^2.c^-3.d^-4.b         d^5.b^2.a^8.b^5            
#> [11] d^-4.c^4.d^2.c^-3.d^5       d^6.a^10                   
#> [13] c^3.d.c^4                   c.b^5.d^2.c^2.a^5          
#> [15] c^6.b^5.a                   b^3.a^-4.b.d^-5            
#> [17] b^6.d^6.a^-2.b^3            b^-6.d^-3.b^-9.d^-1.a^2    
#> [19] a^3.b^6.c^2.a^-2.d          c^-8.d^-4.c^-4.a^5.d^-1    
size(a)
#>  [1] 6 2 2 3 5 6 4 4 5 4 5 2 3 5 3 4 4 5 5 5
total(a)
#>  [1] 18 10  7  9 23 24 16 20 16 20 18 16  8 15 12 13 17 21 14 22
number(a)
#>  [1] 4 2 2 3 4 3 3 2 4 3 2 2 2 4 3 3 3 3 4 3

a <- rfree(20,6,4)
b <- rfree(20,6,4)

## Following should all be TRUE
size(a+b)   <= size(a)  + size(b)
#>  [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
#> [16] TRUE TRUE TRUE TRUE TRUE
total(a+b)  <= total(a) + total(b)
#>  [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
#> [16] TRUE TRUE TRUE TRUE TRUE
number(a+b) <= number(a)+ number(b)
#>  [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
#> [16] TRUE TRUE TRUE TRUE TRUE

bigness(rfree(10,3,3))
#>                size total number
#> a^-1.c^-1.b^-3    3     5      3
#> a^-1              1     1      1
#> a^2.b^-3.c^-1     3     6      3
#> a^-1.b^-2         2     3      2
#> b^-1.a^3          2     4      2
#> a^4               1     4      1
#> b^-1.a^-3.b       3     5      2
#> a^-1.c^-2         2     3      2
#> c^-2              1     2      1
#> c^-3.b^3.a        3     7      3
bigness(allconj(rfree(1,6,1)))
#>       size total number
#> a^-14    1    14      1
#> a^-14    1    14      1
#> a^-14    1    14      1
#> a^-14    1    14      1
#> a^-14    1    14      1
#> a^-14    1    14      1
#> a^-14    1    14      1
#> a^-14    1    14      1
#> a^-14    1    14      1
#> a^-14    1    14      1
#> a^-14    1    14      1
#> a^-14    1    14      1
#> a^-14    1    14      1
#> a^-14    1    14      1
```
