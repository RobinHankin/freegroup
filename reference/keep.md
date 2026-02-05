# Keep or drop symbols

Keep or drop symbols

## Usage

``` r
keep(a, yes)
discard(a, no)
```

## Arguments

- a:

  Object of class `free`

- yes,no:

  Specification of symbols to either keep (yes) or discard (no), coerced
  to a free object

## Author

Robin K. S. Hankin

## Note

Function `keep()` needs an explicit
[`return()`](https://rdrr.io/r/base/function.html) to prevent it from
returning invisibly.

The functions are vectorised in the first argument but not the second.

The second argument—the symbols to keep or discard—is formally a vector
of nonnegative integers, but the functions coerce it to a free object.
The symbols kept or dropped are the union of the symbols in the elements
of the vector. Function `discard()` was formerly known as `drop()` but
this conflicted with [`base::drop()`](https://rdrr.io/r/base/drop.html).

These functions have nothing in common with APL's `take()` and `drop()`.

## Examples

``` r
(x <- rfree(20,5,8))
#>  [1] g^-4.d^5.g^4.a^-1.f^3   a^3.g.a^-3.g^-5.c^-1    h^3.a^-2.c^-2.f^-2     
#>  [4] c^-4.e.b^3.e^4.g^-5     b^-3.a^-2.d^-1.h^-4     h^5.a^-2.h^-4          
#>  [7] g^3.a^-1.g^-5.d^-5.e^-3 d.b^2.g^2.f.d^4         b^4.f^-1.h^5.d^8       
#> [10] g^-3.a^3.c^-2.d^-3      d^4.e^-3.b.e^-3         c^-2.h.a^-2.b^-3       
#> [13] b^-2.g^-1.f^4.b^5       b^4.g^3.c^-3.g^2.d^-4   h^4.f^-5.h^-5.a^2.f^-2 
#> [16] d^-7.f^5.c^-4           d^-4.c^4.h^5.f^3        b^-5.a^-3.f^-1.g^-3.d^2
#> [19] f^-3.g^5.d^2.h^4        f^3.g.c^-5.h^2         

keep(x,abc(4))           # keep only symbols a,b,c,d
#>  [1] d^5.a^-1       c^-1           a^-2.c^-2      c^-4.b^3       b^-3.a^-2.d^-1
#>  [6] a^-2           a^-1.d^-5      d.b^2.d^4      b^4.d^8        a^3.c^-2.d^-3 
#> [11] d^4.b          c^-2.a^-2.b^-3 b^3            b^4.c^-3.d^-4  a^2           
#> [16] d^-7.c^-4      d^-4.c^4       b^-5.a^-3.d^2  d^2            c^-5          
discard(x,as.free('cde'))   # drop symbols c,d,e
#>  [1] a^-1.f^3               a^3.g.a^-3.g^-5        h^3.a^-2.f^-2         
#>  [4] b^3.g^-5               b^-3.a^-2.h^-4         h^5.a^-2.h^-4         
#>  [7] g^3.a^-1.g^-5          b^2.g^2.f              b^4.f^-1.h^5          
#> [10] g^-3.a^3               b                      h.a^-2.b^-3           
#> [13] b^-2.g^-1.f^4.b^5      b^4.g^5                h^4.f^-5.h^-5.a^2.f^-2
#> [16] f^5                    h^5.f^3                b^-5.a^-3.f^-1.g^-3   
#> [19] f^-3.g^5.h^4           f^3.g.h^2             

keep(x,alpha(3))  # keep only abc 
#>  [1] 0    c^-1 c^-2 c^-4 0    0    0    0    0    c^-2 0    c^-2 0    c^-3 0   
#> [16] c^-4 c^4  0    0    c^-5
```
