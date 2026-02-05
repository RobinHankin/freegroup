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
#>  [1] c^2.b^-4.d^2.b^-4.a^-2.b^2 a^-5.d^3.b^3.a^-1         
#>  [3] a^9.d^-5.b.c^3             b^-5.d^11.b^-4.d^-5.b^-1  
#>  [5] a^7.d^-6.c^-1.a^-2.b^5     a^2.d^-4.c^-3             
#>  [7] c^10.d^-6.b^3.a^-6.d^-5    a^-2.b^-4.a^5             
#>  [9] c.b^4.c^4.d.c^-9           a^2.d.a^4.d^-1.c^-6       
#> [11] b^7.c.b^-2.c^-4            b.d^-5.b^-1.c             
#> [13] d^3.a^-2.b^3.a^-1.b        b^-9.d^-1.a^4.d^-5        
#> [15] b^6.a^2.d^-1.b^-3          c^-4.a^5.d^-1.c^4         
#> [17] c^-5.b^4.c^3.d^2           a^-2.d^-2.b^4.c^6.d^3     
#> [19] c^6.a^3.b^-5.d^6           d^-3.b^6.a.b^-3           
size(a)
#>  [1] 6 4 4 5 5 3 5 3 5 5 4 4 5 4 4 4 4 5 4 4
total(a)
#>  [1] 16 12 18 26 21  9 30 11 19 14 14  8 10 19 12 14 14 17 20 13
number(a)
#>  [1] 4 3 4 2 4 3 4 2 3 3 2 3 3 3 3 3 3 4 4 3

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
#>              size total number
#> a^-1            1     1      1
#> a^-2.c^-3       2     5      2
#> c^-1            1     1      1
#> c^-1.a^-3       2     4      2
#> a^-3            1     3      1
#> a^-3.c^-1       2     4      2
#> a^4             1     4      1
#> c^2.b^-1.c^3    3     6      2
#> a^-2.c^2        2     4      2
#> c.a^-2.b^2      3     5      3
bigness(allconj(rfree(1,6,1)))
#>       size total number
#> a^-16    1    16      1
#> a^-16    1    16      1
#> a^-16    1    16      1
#> a^-16    1    16      1
#> a^-16    1    16      1
#> a^-16    1    16      1
#> a^-16    1    16      1
#> a^-16    1    16      1
#> a^-16    1    16      1
#> a^-16    1    16      1
#> a^-16    1    16      1
#> a^-16    1    16      1
#> a^-16    1    16      1
#> a^-16    1    16      1
#> a^-16    1    16      1
#> a^-16    1    16      1
```
