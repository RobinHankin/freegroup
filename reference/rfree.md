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
#> [1] d^4.c^-4.b      b^4.c^-3        c^-2.a^-3.b^2   d.c^2.d^2      
#> [5] a^2.b^-4.d.a^-1 b^3.c^2.d^-2    d^4            

abelianize(rfree())
#> [1] a^-1.b^-1    a^-1.b^2.c^8 b^-1.c^4     b^3.c^2      a.d^7       
#> [6] a^-1.b.c^-4  a.c^3.d^4   

rfree(10,2)
#>  [1] b^4      b^-1     b        a        a^-1.b^2 b^2      a.b^-1   a^2     
#>  [9] a^4      b^2.a^-1
rfree(10,30,26)
#>  [1] k^-3.p^26.o^30.p^-15.b^-28.i^-15.q^-17.s^-15.v^22.z^-15.a^-26.i^27.n^-26.b^17.s^-11.x^12.l^15.d^3.f^22.o^21.q^13.l^-12.q^9.r^-30.y^-21.i^-28.s^26.z^-6     
#>  [2] m^-13.g^-6.z^-12.x^-4.s^-17.k^-24.p^6.b^-29.z^6.q^-1.a^3.g^-29.j^11.n^-26.q^5.r^-11.v^25.j^-10.s^15.e^-8.g^11.o^22.f^-25.x^-16.b^5.j^-8.r^-3.k^-26         
#>  [3] r^-12.h^-9.w^-6.h^16.l^3.y^-9.f^6.c^29.r^11.x^-2.l^-1.g^56.e^15.f^24.q^-16.d^-19.c^30.a^13.x^7.n^-16.g^18.u^7.s^14.p^5.s^12.h^6.u^25.a^-25                 
#>  [4] f^-13.e^-19.l^-5.m^7.z^-13.r^15.y^2.s^25.g^6.j^8.t^-3.r^4.n^-7.d^28.g^-20.p^2.t^-16.l^26.r^2.g^11.d^-3.w^-22.u^10.w^4.y^18.a^-17.o^-26.z^-28               
#>  [5] o^-11.k^-5.t^37.q^2.y^9.t^18.b^2.j^26.s^25.a^-11.h^19.k^4.x^29.k^28.d^28.z^22.m^14.l.v^16.z^-9.y^11.t^-11.i^27.c^23.w^-11.v^-23.f^-26.b^-30                
#>  [6] k^-11.j^27.w^-22.r^-14.u^-12.p^-26.d^-2.j^14.x^6.d^-1.z^-43.p^16.m^-12.e^-22.c^-25.v^-28.k.a^4.c^36.j^14.k^-4.t^-3.i^-4.t^9.i^11.z^-12.i^13.w^5            
#>  [7] s^-30.m^22.c^24.a^9.s^-27.l^24.m^-30.l^-30.i^-19.k^-20.o^30.p^36.u^-27.x^-10.k^6.s^28.w^-4.t^5.x.g^23.h^-10.r^-5.v^2.c^4.v^2.p^24.u^-6                     
#>  [8] f^11.j^-17.a^22.w^-10.j^-7.h^-19.p^28.k^13.q^17.d^-28.l^8.x^-13.o^-12.w^11.a^-18.e^-10.a^-15.h^-12.u^25.q^18.i^13.w^-16.s^-28.c^10.l^8.u^20.p^5.b^-19.l^-24
#>  [9] l^22.v^-28.h^3.l^-11.k^-10.b^11.m^-5.h^4.y^-30.e^-30.j^5.n^29.i^22.c^28.q^-17.y^-1.f^-9.n^5.e^-24.a^6.x^14.p^5.y^-17.r^-6.u^23.c^28.v^-8.g^15.q^21.p^-20   
#> [10] b^-29.q^14.w^10.n^13.g^12.x^17.t^26.b.s^16.w^11.i^-2.n^-5.m^10.h^12.j^-5.k^19.n^27.a^-10.d^12.e^-23.w^25.l^-21.z^-20.k^11.s^4.d^4.k^12.m^-17.p^3           

rfree(powers=5)
#> [1] a.c^2.a^2.b^2   c^4.d^3.a^5     d^5.b^5.c^2.d^5 c^7.b^2.d^2    
#> [5] a^5.c^4.d^5     d^7.a^3.b^3     d.a^2.d^5      
rfree(powers=5:6)
#> [1] c^5.b^5.a^6.d^6 c^6.a^17        a^5.d^6.a^6.d^5 a^5.b^6.a^6.c^5
#> [5] c^6.a^6.b^6.a^6 a^6.b^6.d^6.a^5 c^17.a^6       

rfree(20,2)^alpha(26)
#>  [1] z^-1.a^-1.z      z^-1.b^-1.z      z^-1.b^2.a^2.z   z^-1.b^-2.a^-2.z
#>  [5] z^-1.b^-3.z      z^-1.b.a^-2.z    z^-1.b^4.z       z^-1.a^4.z      
#>  [9] z^-1.a^2.z       z^-1.b.z         z^-1.a.b^-1.z    z^-1.b^-1.z     
#> [13] z^-1.b.z         z^-1.a^3.z       z^-1.b.z         z^-1.a^2.b.z    
#> [17] 0                z^-1.b.z         z^-1.a.z         z^-1.b^-3.z     
```
