# The Free Group

The free group in R; juxtaposition is represented by a plus. Includes
inversion, multiplication by a scalar, group-theoretic power operation,
and Tietze forms. To cite the package in publications please use Hankin
(2022) \<doi:10.48550/ARXIV.2212.05883\>.

## Details

The DESCRIPTION file: This package was not yet installed at build
time.  
Index: This package was not yet installed at build time.  

## Author

Robin K. S. Hankin \[aut, cre\] (ORCID:
\<https://orcid.org/0000-0001-5982-0415\>)

Maintainer: Robin K. S. Hankin \<hankin.robin@gmail.com\>

## Examples

``` r
p <- rfree(10,6,3)
x <- as.free('x')

p+x
#>  [1] c^2.a^-1.b^-5.x               c^-5.b^-1.c^-1.x             
#>  [3] b.c^3.b^-6.a^4.x              b^3.c^4.b^-1.c^2.a^4.c^-3.x  
#>  [5] a^6.c^-5.a^5.b^-4.c^-1.b^-2.x b.c^2.a^5.b^10.x             
#>  [7] b^-3.c^4.b^-1.c^8.x           a^-3.c^5.b^-8.x              
#>  [9] a^-6.b^-1.a^2.b.x             a^9.b^-3.a^3.c^-1.x          

p^x
#>  [1] x^-1.c^2.a^-1.b^-5.x               x^-1.c^-5.b^-1.c^-1.x             
#>  [3] x^-1.b.c^3.b^-6.a^4.x              x^-1.b^3.c^4.b^-1.c^2.a^4.c^-3.x  
#>  [5] x^-1.a^6.c^-5.a^5.b^-4.c^-1.b^-2.x x^-1.b.c^2.a^5.b^10.x             
#>  [7] x^-1.b^-3.c^4.b^-1.c^8.x           x^-1.a^-3.c^5.b^-8.x              
#>  [9] x^-1.a^-6.b^-1.a^2.b.x             x^-1.a^9.b^-3.a^3.c^-1.x          

sum(p)
#> [1] c^2.a^-1.b^-5.c^-5.b^-1.c^-1.b.c^3.b^-6.a^4.b^3.c^4.b^-1.c^2.a^4.c^-3.a^6.c^-5.a^5.b^-4.c^-1.b^-1.c^2.a^5.b^7.c^4.b^-1.c^8.a^-3.c^5.b^-8.a^-6.b^-1.a^2.b.a^9.b^-3.a^3.c^-1

abelianize(p)
#>  [1] a^-1.b^-5.c^2  b^-1.c^-6      a^4.b^-5.c^3   a^4.b^2.c^3    a^11.b^-6.c^-6
#>  [6] a^5.b^11.c^2   b^-4.c^12      a^-3.b^-8.c^5  a^-4           a^12.b^-3.c^-1

subsu(p,"ab","z")
#>  [1] c^2.z^-6                  c^-5.z^-1.c^-1           
#>  [3] z.c^3.z^-2                z^3.c^4.z^-1.c^2.z^4.c^-3
#>  [5] z^6.c^-5.z.c^-1.z^-2      z.c^2.z^15               
#>  [7] z^-3.c^4.z^-1.c^8         z^-3.c^5.z^-8            
#>  [9] z^-4                      z^9.c^-1                 
subs(p,a='z')
#>  [1] c^2.z^-1.b^-5               c^-5.b^-1.c^-1             
#>  [3] b.c^3.b^-6.z^4              b^3.c^4.b^-1.c^2.z^4.c^-3  
#>  [5] z^6.c^-5.z^5.b^-4.c^-1.b^-2 b.c^2.z^5.b^10             
#>  [7] b^-3.c^4.b^-1.c^8           z^-3.c^5.b^-8              
#>  [9] z^-6.b^-1.z^2.b             z^9.b^-3.z^3.c^-1          


discard(p+x,'a')
#>  [1] c^2.b^-5.x            c^-5.b^-1.c^-1.x      b.c^3.b^-6.x         
#>  [4] b^3.c^4.b^-1.c^-1.x   c^-5.b^-4.c^-1.b^-2.x b.c^2.b^10.x         
#>  [7] b^-3.c^4.b^-1.c^8.x   c^5.b^-8.x            x                    
#> [10] b^-3.c^-1.x          
```
