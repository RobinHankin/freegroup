# Substitute and invert symbols

Substitute and invert specific symbols in a free object

## Usage

``` r
subsu(X, from, to)
subs(X, ...)
flip(X, turn)
```

## Arguments

- X:

  Object of class `free`

- from,to,turn:

  Objects coerced to class `free` specifying symbols to alter. These
  arguments are coerced to symbols using `getlet(as.free())`

- ...:

  Named arguments for substitution

## Details

Function `subsu(X,from,to)` takes object `X` and transforms every symbol
present in `from` into the symbol specified in `to`.

Function `flip(X,turn)` takes object `X` and replaces every symbol
present in `turn` with its inverse.

Function
[`discard()`](https://robinhankin.github.io/freegroup/reference/keep.md),
documented at `keep.Rd`, effectively substitutes a symbol with the
identity element (thereby discarding it).

Experimental function `subs()` is modelled on similar functionality in
the [freealg](https://CRAN.R-project.org/package=freealg) package and
makes idiom such as `subs(X,a='z')` work as expected (viz, taking each
instance of symbol `a` and replacing it with `x`).

## Author

Robin K. S. Hankin

## Note

Functions `subs()` and `subsu()` substitute for particular symbols, not
free group elements. In particular, be careful with uppercase (inverse)
symbols; because the power is discarded, substituting with `x` is the
same as substituting for `X`. This behaviour might change in the future.

## See also

[`abs`](https://robinhankin.github.io/freegroup/reference/abs.md),[`discard`](https://robinhankin.github.io/freegroup/reference/keep.md)

## Examples

``` r
subsu(abc(1:10),abc(5),'z')
#>  [1] z             z^2           z^3           z^4           z^5          
#>  [6] z^5.f         z^5.f.g       z^5.f.g.h     z^5.f.g.h.i   z^5.f.g.h.i.j
flip(abc(1:10),abc(5))
#>  [1] a^-1                               a^-1.b^-1                         
#>  [3] a^-1.b^-1.c^-1                     a^-1.b^-1.c^-1.d^-1               
#>  [5] a^-1.b^-1.c^-1.d^-1.e^-1           a^-1.b^-1.c^-1.d^-1.e^-1.f        
#>  [7] a^-1.b^-1.c^-1.d^-1.e^-1.f.g       a^-1.b^-1.c^-1.d^-1.e^-1.f.g.h    
#>  [9] a^-1.b^-1.c^-1.d^-1.e^-1.f.g.h.i   a^-1.b^-1.c^-1.d^-1.e^-1.f.g.h.i.j


o <- rfree(30,5,10)

# Following tests should all be TRUE:
size(flip(o,'a'))   == size(o)
#>  [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
#> [16] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
number(flip(o,'a')) == number(o)
#>  [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
#> [16] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
total(flip(o,'a'))  == total(o)
#>  [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
#> [16] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE

size(subsu(o,'a','b'))   <= size(o)
#>  [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
#> [16] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
number(subsu(o,'a','b')) <= number(o)
#>  [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
#> [16] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
total(subsu(o,'a','b'))  <= total(o)
#>  [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
#> [16] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE


frog <- rfree()
subs(frog,a='x')
#> [1] x^-8.b^-3.c^2       b^-1.x^-1.b^-1.d^-3 x.c^3.x            
#> [4] c^8.b^2             d^-4.c.b^2.x^2      x^-3.b^-3.x^-3     
#> [7] b^4.c^4.b^-2       
```
