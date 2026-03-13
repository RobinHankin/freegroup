# Random free objects

Creates a vector of random free objects. Intended as a quick “get you
going” example of free group objects

## Usage

``` r
rfree(n = 7, size = 4, number = size, powers = seq(from = -size, to = size))
rfreee(n = 30, size = 8, number = size, powers = seq(from = -size, to = size))
rfreeee(n = 40, size = 25, number = size, powers = seq(from = -size, to = size))
```

## Arguments

- n:

  Length of random vector to generate

- size:

  Maximum length of each element

- number:

  How many distinct letters to sample from

- powers:

  Powers in resulting polynomial. An integer `n` is interpreted (via
  [`sample()`](https://rdrr.io/r/base/sample.html)) as `seq_len(n)`

## Details

The auxiliary arguments specify the general complexity of the returned
object with small meaning simpler.

Functions `rfreee()` and `rfreeee()` give, by default, successively more
complicated expressions.

## Author

Robin K. S. Hankin

## See also

[`size`](https://robinhankin.github.io/freegroup/reference/size.md)

## Examples

``` r
rfree()
#> [1] c^3.d^-3.c^3.d^4  a^-4.d^2          a^-1.b^2.c^2.b^-4 b^2.d^-1         
#> [5] c^-2.a^-3.b^2     d.c^2.d^2         a^2.b^-4.d.a^-1  

abelianize(rfree())
#> [1] b^3.c^2.d^-2 d^4          a^-1.b^-1    a^-1.b^2.c^8 b^-1.c^4    
#> [6] b^3.c^2      a.d^7       

rfree(10,2)
#>  [1] a       b^-1    a^-2    a^2.b   a^2.b^2 a^3     b.a     b^-3    b      
#> [10] a      
rfree(10,30,26)
#>  [1] k^-22.g^-4.z^-4.e^-14.p^-12.g^-9.k^-5.e^-1.o^-30.d^10.p^-17.t^15.b^3.g^-12.t^-7.d^30.o^-19.m^-27.h^7.e^16.l^18.y^-19.m^-14.n^19.z^-6.k^-22.p^-12.o^-26.p^30.b^29
#>  [2] z^8.y^-5.p^25.c^-12.p^-20.n.p.u^-15.p^3.e^27.z^-14.b^30.p^-24.t^-21.k^15.n^-14.b^29.u^-13.t^23.l^-21.s^-12.h^-26.a^6.j^8.c^28.y^44                              
#>  [3] b^-3.j^-26.r^-13.k^9.a^-8.p^-23.y^-1.s^13.n^26.g^7.e^-28.b^19.e^25.b^13.j^8.e^-24.d^-26.t^-25.x^-14.u^28.n^-4.e^-27.q^-28.j^-30.u^-2.o^-7.d^-17.w^-24           
#>  [4] u^25.p^-25.s^7.h^-26.u^13.t^14.a^-5.s^19.v^-6.y^20.o^8.b^11.v^21.e.j^-13.z^-17.n.w^-17.o^-27.l^4.f^-4.o^17.q^21.f^13.m^13.d^-13.k^-24.e^-27                     
#>  [5] w^-17.u^-26.w^-28.y^-16.a^12.o^21.z^21.r.z^-14.f^26.r^29.n^-11.a^3.x^-21.e^-4.g^20.c^2.t^-23.c^-20.k^25.a^12.o^5.z^27.a^14.j^13.i^-14.c^-3.q^-6                 
#>  [6] i^-23.c^-26.w^-30.r^12.v^11.f^-1.b^-8.t^-13.z^-2.t^22.o^17.a^-27.h^11.q^28.a^-7.y^28.x^-3.t^5.r^-5.c^-5.u^-15.m^-3.o^-18.v^6.j^-28.t^29.z^-2.v^-9.t^12          
#>  [7] a^14.c^-7.j^-4.k^9.t^11.i^-12.t^13.i^5.z^20.i^14.w^4.t^5.z^-30.i^-12.q^-19.s^-3.e^-3.m^-18.e^13.k^10.o^-20.s^-1.i^16.f^17.c^7.l^25.v^-20                        
#>  [8] j^-10.s^-5.w^2.t^4.x^2.g^24.h^-6.r^7.v^-21.c^2.v^-8.p^-3.u^-21.a^-3.u^-23.w^-15.h^-3.d^12.w^18.a^-14.l^-1.k.t^6.n^-7.d^16.u^-8.e^-2.d^2.v^6                     
#>  [9] a^25.h^18.u^13.q^-16.i^-28.w^10.s^8.c^20.l^5.u^-19.p^-24.b^-1.l^-4.j^-19.n^23.u^-10.x^29.l^10.p^3.c^14.g^9.r^28.s^-6.j^-26.m^-3.u^11.p^-17.s^-22                
#> [10] c^-1.q^-9.y^5.f^-24.n^6.e^14.a^5.x^-17.p^-6.y^23.r^28.u^-8.c^15.v^21.g^-20.q^3.p^18.u^24.c^15.b^-24.t^25.u^-11.j^3.z^-12.c^24.a^-7.d^-18.u^-23.n^11             

rfree(powers=5)
#> [1] c^5.b^4.a^2.d^3 d^3.c^5.d^2.c^5 a.d^2.c^5.d^2   a^2.c^5.b^5    
#> [5] c^2.b^2.c^2     b^2.a^2.b^3.d^4 a^4.d^8        
rfree(powers=5:6)
#> [1] b^5.c^6.d^6.a^6 a^6.c^11.b^6    b^6.a^5.c^5.d^6 d^6.c^6.d^11   
#> [5] d^5.a^5.b^5.d^5 c^6.d^6.a^5.d^6 d^5.b^6.c^6.d^5

rfree(20,2)^alpha(26)
#>  [1] z^-1.b^-2.a.z    z^-1.b^-2.a^2.z  z^-1.a.b^-2.z    z^-1.b.a^-2.z   
#>  [5] 0                z^-1.a^-1.z      z^-1.b^-2.a^-1.z z^-1.a^-2.b^-1.z
#>  [9] z^-1.b^2.z       z^-1.a^3.z       z^-1.b^-1.a^2.z  z^-1.b.z        
#> [13] z^-1.b^-3.z      z^-1.a^2.b^2.z   z^-1.b^-2.a^-2.z z^-1.b^-3.z     
#> [17] z^-1.b.a^-2.z    z^-1.b^4.z       z^-1.a^4.z       z^-1.a^2.z      
```
