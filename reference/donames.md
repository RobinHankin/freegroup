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
#> [1] c^-4.a            c^2.a^4.d^-4.c^-3 a^3.b^-4.d        c^4.b^-2         
#> [5] b.a^-1.d^2        d^2.c^3           c^-3.d^2.a^-4     b^2.c^-5.d^-1    
#> [9] b^7.d^4          
names(x) <- letters[1:9]
x
#>                 a                 b                 c                 d 
#>            c^-4.a c^2.a^4.d^-4.c^-3        a^3.b^-4.d          c^4.b^-2 
#>                 e                 f                 g                 h 
#>        b.a^-1.d^2           d^2.c^3     c^-3.d^2.a^-4     b^2.c^-5.d^-1 
#>                 i 
#>           b^7.d^4 

z <- as.free('z')
x + x 
#>                               a                               b 
#>                   c^-4.a.c^-4.a c^2.a^4.d^-4.c^-1.a^4.d^-4.c^-3 
#>                               c                               d 
#>           a^3.b^-4.d.a^3.b^-4.d               c^4.b^-2.c^4.b^-2 
#>                               e                               f 
#>           b.a^-1.d^2.b.a^-1.d^2                 d^2.c^3.d^2.c^3 
#>                               g                               h 
#>     c^-3.d^2.a^-4.c^-3.d^2.a^-4     b^2.c^-5.d^-1.b^2.c^-5.d^-1 
#>                               i 
#>                 b^7.d^4.b^7.d^4 
x^z
#>                        a                        b                        c 
#>            z^-1.c^-4.a.z z^-1.c^2.a^4.d^-4.c^-3.z        z^-1.a^3.b^-4.d.z 
#>                        d                        e                        f 
#>          z^-1.c^4.b^-2.z        z^-1.b.a^-1.d^2.z           z^-1.d^2.c^3.z 
#>                        g                        h                        i 
#>     z^-1.c^-3.d^2.a^-4.z     z^-1.b^2.c^-5.d^-1.z           z^-1.b^7.d^4.z 
z^x
#>                                     a                                     b 
#>                     a^-1.c^4.z.c^-4.a c^3.d^4.a^-4.c^-2.z.c^2.a^4.d^-4.c^-3 
#>                                     c                                     d 
#>            d^-1.b^4.a^-3.z.a^3.b^-4.d                   b^2.c^-4.z.c^4.b^-2 
#>                                     e                                     f 
#>              d^-2.a.b^-1.z.b.a^-1.d^2                   c^-3.d^-2.z.d^2.c^3 
#>                                     g                                     h 
#>          a^4.d^-2.c^3.z.c^-3.d^2.a^-4            d.c^5.b^-2.z.b^2.c^-5.d^-1 
#>                                     i 
#>                   d^-4.b^-7.z.b^7.d^4 

n <- 1:9
names(n) <- LETTERS[1:9]

x*n
#>                                                                                                               a 
#>                                                                                                          c^-4.a 
#>                                                                                                               b 
#>                                                                                 c^2.a^4.d^-4.c^-1.a^4.d^-4.c^-3 
#>                                                                                                               c 
#>                                                                                a^3.b^-4.d.a^3.b^-4.d.a^3.b^-4.d 
#>                                                                                                               d 
#>                                                                             c^4.b^-2.c^4.b^-2.c^4.b^-2.c^4.b^-2 
#>                                                                                                               e 
#>                                                          b.a^-1.d^2.b.a^-1.d^2.b.a^-1.d^2.b.a^-1.d^2.b.a^-1.d^2 
#>                                                                                                               f 
#>                                                                 d^2.c^3.d^2.c^3.d^2.c^3.d^2.c^3.d^2.c^3.d^2.c^3 
#>                                                                                                               g 
#>               c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4 
#>                                                                                                               h 
#> b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1 
#>                                                                                                               i 
#>                                         b^7.d^4.b^7.d^4.b^7.d^4.b^7.d^4.b^7.d^4.b^7.d^4.b^7.d^4.b^7.d^4.b^7.d^4 
n*x  # note different names 
#>                                                                                                               a 
#>                                                                                                          c^-4.a 
#>                                                                                                               b 
#>                                                                                 c^2.a^4.d^-4.c^-1.a^4.d^-4.c^-3 
#>                                                                                                               c 
#>                                                                                a^3.b^-4.d.a^3.b^-4.d.a^3.b^-4.d 
#>                                                                                                               d 
#>                                                                             c^4.b^-2.c^4.b^-2.c^4.b^-2.c^4.b^-2 
#>                                                                                                               e 
#>                                                          b.a^-1.d^2.b.a^-1.d^2.b.a^-1.d^2.b.a^-1.d^2.b.a^-1.d^2 
#>                                                                                                               f 
#>                                                                 d^2.c^3.d^2.c^3.d^2.c^3.d^2.c^3.d^2.c^3.d^2.c^3 
#>                                                                                                               g 
#>               c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4.c^-3.d^2.a^-4 
#>                                                                                                               h 
#> b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1.b^2.c^-5.d^-1 
#>                                                                                                               i 
#>                                         b^7.d^4.b^7.d^4.b^7.d^4.b^7.d^4.b^7.d^4.b^7.d^4.b^7.d^4.b^7.d^4.b^7.d^4 

```
