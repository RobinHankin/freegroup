# Extract or replace parts of a free group object

Extract or replace subsets of free objects

## Arguments

- x:

  Object of class `free`

- index:

  elements to extract or replace

- value:

  replacement value

## Details

These methods (should) work as expected: an object of class `free` is a
list but standard extraction techniques should work.

## Note

Extraction by `NA` is not implemented.

## Examples

``` r
(x <- rfree(20,8,8))
#>  [1] d^-3.e^-4.f^-4.g^3.d^2                f^-5.c^7.e^-13.d^2.e^-2.b^-3         
#>  [3] f^-8.g^-3.b^-7.h^5.e^-8.b^6.a^-4.d^-1 a^-6.h^-7.d.c^-6.d^-8.h.c^-8         
#>  [5] g^-8.f^-10.c^3.b.h^-10                g^3.d^8.b^-4.d^8.f.e^-8.g^-8         
#>  [7] e^-2.b^-7.h^-1.c^-3.a^4.d^4           a^-5.e^-4.b^8.g.d^3.c^4              
#>  [9] h^-3.g^3.e^-2.d^2.a.c^-1.g^8.a^3      d.g^-6.b^-5.d^4.f^-3.e^5.b^-7.e^-4   
#> [11] c^8.b^2.d^6.c^8.h^6                   g^5.e^-2.a^-1.d^3.g^-6.c^6           
#> [13] d^-8.h^-7.g^2.b^-1.h^6.d^2            h.d^2.c^6.a^-7.d.a.e^-7              
#> [15] e^4.f^-6.c^6.a^6.f^-1                 b^4.g^-7.e^4.h^-6.c^8.d^-8.e^7       
#> [17] b^-11.c^3.e^3.b^-1.c^7.h^5            f^-2.d^-5.a^-4.f^3.e^-1.f^2.g^7      
#> [19] c^8.b^2.c^-4.h^3.b^-3.f^14            d^-3.g^3                             

x[5:6]
#> [1] g^-8.f^-10.c^3.b.h^-10       g^3.d^8.b^-4.d^8.f.e^-8.g^-8
x[1:2]  <- -x[11:12]

x[1:5] <- keep(x[1:5],1:3)
```
