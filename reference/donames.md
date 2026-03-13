# Names attributes of free group elements

Get and set names of free group elements and arithmetic operations

## Usage

``` r
donames(f,e1,e2)
```

## Arguments

- f:

  A vector, typically of class `free`

- e1,e2:

  Objects of class `free`, possibly with names

## Details

Function `donames()` is a low-level helper function that ensures that
the result of arithmetic operations such as `+` and `^` have the correct
names attributes. The behaviour is inherited from that of
[`` base::`+` ``](https://rdrr.io/r/base/Arithmetic.html).

## Author

Robin K. S. Hankin

## See also

[`Ops.free`](https://robinhankin.github.io/freegroup/reference/Ops.free.md)

## Examples

``` r
x <- rfree(9,4)
x
#> [1] a^-1.b^4        c^-4            b^4.c^4.b^4     a^3.b^-3.a^-1.b
#> [5] c^4.b^-2        b.a^-1.d^2      d^2.c^3         c^-3.d^2.a^-4  
#> [9] b^2.c^-5.d^-1  
names(x) <- letters[1:9]
x
#>               a               b               c               d               e 
#>        a^-1.b^4            c^-4     b^4.c^4.b^4 a^3.b^-3.a^-1.b        c^4.b^-2 
#>               f               g               h               i 
#>      b.a^-1.d^2         d^2.c^3   c^-3.d^2.a^-4   b^2.c^-5.d^-1 

z <- as.free('z')
x + x 
#>                               a                               b 
#>               a^-1.b^4.a^-1.b^4                            c^-8 
#>                               c                               d 
#>             b^4.c^4.b^8.c^4.b^4 a^3.b^-3.a^-1.b.a^3.b^-3.a^-1.b 
#>                               e                               f 
#>               c^4.b^-2.c^4.b^-2           b.a^-1.d^2.b.a^-1.d^2 
#>                               g                               h 
#>                 d^2.c^3.d^2.c^3     c^-3.d^2.a^-4.c^-3.d^2.a^-4 
#>                               i 
#>     b^2.c^-5.d^-1.b^2.c^-5.d^-1 
x^z
#>                      a                      b                      c 
#>        z^-1.a^-1.b^4.z            z^-1.c^-4.z     z^-1.b^4.c^4.b^4.z 
#>                      d                      e                      f 
#> z^-1.a^3.b^-3.a^-1.b.z        z^-1.c^4.b^-2.z      z^-1.b.a^-1.d^2.z 
#>                      g                      h                      i 
#>         z^-1.d^2.c^3.z   z^-1.c^-3.d^2.a^-4.z   z^-1.b^2.c^-5.d^-1.z 
z^x
#>                                 a                                 b 
#>                 b^-4.a.z.a^-1.b^4                        c^4.z.c^-4 
#>                                 c                                 d 
#>      b^-4.c^-4.b^-4.z.b^4.c^4.b^4 b^-1.a.b^3.a^-3.z.a^3.b^-3.a^-1.b 
#>                                 e                                 f 
#>               b^2.c^-4.z.c^4.b^-2          d^-2.a.b^-1.z.b.a^-1.d^2 
#>                                 g                                 h 
#>               c^-3.d^-2.z.d^2.c^3      a^4.d^-2.c^3.z.c^-3.d^2.a^-4 
#>                                 i 
#>        d.c^5.b^-2.z.b^2.c^-5.d^-1 

n <- 1:9
names(n) <- LETTERS[1:9]

x*n
#>                                                                                                                             a 
#>                                                                                                                      a^-1.b^4 
#>                                                                                                                             b 
#>                                                                                                                          c^-8 
#>                                                                                                                             c 
#>                                                                                                   b^4.c^4.b^8.c^4.b^8.c^4.b^4 
#>                                                                                                                             d 
#>                                                               a^3.b^-3.a^-1.b.a^3.b^-3.a^-1.b.a^3.b^-3.a^-1.b.a^3.b^-3.a^-1.b 
#>                                                                                                                             e 
#>                                                                                  c^4.b^-2.c^4.b^-2.c^4.b^-2.c^4.b^-2.c^4.b^-2 
#>                                                                                                                             f 
#>                                                             b.a^-1.d^2.b.a^-1.d^2.b.a^-1.d^2.b.a^-1.d^2.b.a^-1.d^2.b.a^-1.d^2 
#>                                                                                                                             g 
#>                                                                       d^2.c^3.d^2.c^3.d^2.c^3.d^2.c^3.d^2.c^3.d^2.c^3.d^2.c^3 
#>                                                                                                                             h 
#>               c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4 
#>                                                                                                                             i 
#> b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1 
n*x  # note different names 
#>                                                                                                                             a 
#>                                                                                                                      a^-1.b^4 
#>                                                                                                                             b 
#>                                                                                                                          c^-8 
#>                                                                                                                             c 
#>                                                                                                   b^4.c^4.b^8.c^4.b^8.c^4.b^4 
#>                                                                                                                             d 
#>                                                               a^3.b^-3.a^-1.b.a^3.b^-3.a^-1.b.a^3.b^-3.a^-1.b.a^3.b^-3.a^-1.b 
#>                                                                                                                             e 
#>                                                                                  c^4.b^-2.c^4.b^-2.c^4.b^-2.c^4.b^-2.c^4.b^-2 
#>                                                                                                                             f 
#>                                                             b.a^-1.d^2.b.a^-1.d^2.b.a^-1.d^2.b.a^-1.d^2.b.a^-1.d^2.b.a^-1.d^2 
#>                                                                                                                             g 
#>                                                                       d^2.c^3.d^2.c^3.d^2.c^3.d^2.c^3.d^2.c^3.d^2.c^3.d^2.c^3 
#>                                                                                                                             h 
#>               c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4 
#>                                                                                                                             i 
#> b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1 

```
