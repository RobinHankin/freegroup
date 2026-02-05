# Abelianization of free group elements

Function `abelianize()` returns a word that is equivalent to its
argument under assumption of Abelianness. The symbols are placed in
alphabetical order.

## Usage

``` r
abelianize(x)
  is.abelian(x)
```

## Arguments

- x:

  An object of class `free`

## Details

Abelianizing a free group element means that the symbols can commute
past one another. Abelianization is vectorized.

Function `is.abelian()` is trivial: it just checks to see whether
argument `x` has its symbols in alphabetical order. It might have been
better to call this `abelianized()`.

Package [frab](https://CRAN.R-project.org/package=frab) presents
extensive R-centric functionality for dealing with the free Abelian
group. It is much more efficient than this package for Abelian
operations, and contains bespoke methods for working with a range of
applications such as tables of counts.

## Author

Robin K. S. Hankin

## Examples

``` r
x <- as.free("aabAA")
x
#> [1] a^2.b.a^-2
abelianize(x)
#> [1] b

x <- rfree(10,10,2)
x
#>  [1] a^-9.b^-3.a^-4.b^-7.a^-9.b^-12         
#>  [2] a^3.b^3.a^-9.b^-5.a^-10.b^9.a^-9       
#>  [3] b^-1.a^-4.b^-20.a^-8.b^-5.a^-7.b^-1.a^5
#>  [4] a^15.b^-1.a^13.b^-7                    
#>  [5] b^-5.a^8.b^4.a^-12.b^-8.a^8            
#>  [6] b^-2.a^-3.b^9.a^-11.b^5                
#>  [7] b^16.a^-17                             
#>  [8] a^4.b^-10.a^-17.b^13                   
#>  [9] b.a^-5.b^7.a^-2.b^-9.a^-3.b^9          
#> [10] b^11.a^9.b^3.a^-7.b^-3.a^4.b^-5        
abelianize(x)
#>  [1] a^-22.b^-22 a^-25.b^7   a^-14.b^-27 a^28.b^-8   a^4.b^-9    a^-14.b^12 
#>  [7] a^-17.b^16  a^-13.b^3   a^-10.b^8   a^6.b^6    

abelianize(.[rfree(),rfree()])
#> [1] 0 0 0 0 0 0 0


p <- free(rbind(rep(1:5,4),rep(1:4,5)))
p
#> [1] a.b^2.c^3.d^4.e.a^2.b^3.c^4.d.e^2.a^3.b^4.c.d^2.e^3.a^4.b.c^2.d^3.e^4
abelianize(p)
#> [1] a^10.b^10.c^10.d^10.e^10
```
