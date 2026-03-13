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
#>  [1] c^-6.b^-1.c.b^4.c^6.x          c^4.b^-5.a^-5.c^4.x           
#>  [3] b^-1.c^-1.b^-1.x               b^-1.c^3.b^-6.a^-1.x          
#>  [5] c^4.b^-1.c^2.a^4.c^-3.b^6.x    c^-5.a^5.b^-4.c^-1.b^-2.a^-5.x
#>  [7] c^5.a^3.b^2.a^-4.x             c^5.b^3.c^-1.b^4.x            
#>  [9] c^3.b^-14.c^6.a^3.x            a^3.b^8.a^-9.x                

p^x
#>  [1] x^-1.c^-6.b^-1.c.b^4.c^6.x          x^-1.c^4.b^-5.a^-5.c^4.x           
#>  [3] x^-1.b^-1.c^-1.b^-1.x               x^-1.b^-1.c^3.b^-6.a^-1.x          
#>  [5] x^-1.c^4.b^-1.c^2.a^4.c^-3.b^6.x    x^-1.c^-5.a^5.b^-4.c^-1.b^-2.a^-5.x
#>  [7] x^-1.c^5.a^3.b^2.a^-4.x             x^-1.c^5.b^3.c^-1.b^4.x            
#>  [9] x^-1.c^3.b^-14.c^6.a^3.x            x^-1.a^3.b^8.a^-9.x                

sum(p)
#> [1] c^-6.b^-1.c.b^4.c^10.b^-5.a^-5.c^4.b^-1.c^-1.b^-2.c^3.b^-6.a^-1.c^4.b^-1.c^2.a^4.c^-3.b^6.c^-5.a^5.b^-4.c^-1.b^-2.a^-5.c^5.a^3.b^2.a^-4.c^5.b^3.c^-1.b^4.c^3.b^-14.c^6.a^6.b^8.a^-9

abelianize(p)
#>  [1] b^3.c         a^-5.b^-5.c^8 b^-2.c^-1     a^-1.b^-7.c^3 a^4.b^5.c^3  
#>  [6] b^-6.c^-6     a^-1.b^2.c^5  b^7.c^4       a^3.b^-14.c^9 a^-6.b^8     

subsu(p,"ab","z")
#>  [1] c^-6.z^-1.c.z^4.c^6       c^4.z^-10.c^4            
#>  [3] z^-1.c^-1.z^-1            z^-1.c^3.z^-7            
#>  [5] c^4.z^-1.c^2.z^4.c^-3.z^6 c^-5.z.c^-1.z^-7         
#>  [7] c^5.z                     c^5.z^3.c^-1.z^4         
#>  [9] c^3.z^-14.c^6.z^3         z^2                      
subs(p,a='z')
#>  [1] c^-6.b^-1.c.b^4.c^6          c^4.b^-5.z^-5.c^4           
#>  [3] b^-1.c^-1.b^-1               b^-1.c^3.b^-6.z^-1          
#>  [5] c^4.b^-1.c^2.z^4.c^-3.b^6    c^-5.z^5.b^-4.c^-1.b^-2.z^-5
#>  [7] c^5.z^3.b^2.z^-4             c^5.b^3.c^-1.b^4            
#>  [9] c^3.b^-14.c^6.z^3            z^3.b^8.z^-9                


discard(p+x,'a')
#>  [1] c^-6.b^-1.c.b^4.c^6.x c^4.b^-5.c^4.x        b^-1.c^-1.b^-1.x     
#>  [4] b^-1.c^3.b^-6.x       c^4.b^-1.c^-1.b^6.x   c^-5.b^-4.c^-1.b^-2.x
#>  [7] c^5.b^2.x             c^5.b^3.c^-1.b^4.x    c^3.b^-14.c^6.x      
#> [10] b^8.x                
```
