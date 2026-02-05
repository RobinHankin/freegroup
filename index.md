# The free group in R

![](reference/figures/freegroup.png)

# Overview

The `freegroup` package provides functionality for working with the free
group in R. A detailed vignette is provided in the package. Informally,
the *free group* is the set of *words* that are objects like , with a
group operation of string juxtaposition. Usually one works only with
words that are in \`\`reduced form’’, which has successive powers of the
same symbol combined, so would be equal to ; see how appears to the
third power and the term in the middle has vanished.

The group operation of juxtaposition is formally indicated by , but this
is often omitted in algebraic notation; thus, for example .

# Installation

You can install the released version of freegroup from
[CRAN](https://CRAN.R-project.org) with:

``` r
# install.packages("freegroup")  # uncomment this to install the package
library("freegroup")
```

# The `freegroup` package in use

Function
[`rfree()`](https://robinhankin.github.io/freegroup/reference/rfree.md)
generates a vector of random free group elements, giving quick “get you
going” examples:

``` r
a <- rfree(10,5)
a
#>  [1] a.d^5.a^-4.b^5.e^-3 a.e^2.b^2           a^3.e^-7.b^-3      
#>  [4] b^7.d^4             a^2.b^-4.c^-4       a^-5.d^3.c^3       
#>  [7] d^-5.e^-1.d^-5.e^3  c.b^-7.c^4.b^-5     c^6.e^2            
#> [10] e^-3.d^5.a^-5
b <- as.free('x')
```

Then we can perform various operations on these vectors:

``` r
a+b
#>  [1] a.d^5.a^-4.b^5.e^-3.x a.e^2.b^2.x           a^3.e^-7.b^-3.x      
#>  [4] b^7.d^4.x             a^2.b^-4.c^-4.x       a^-5.d^3.c^3.x       
#>  [7] d^-5.e^-1.d^-5.e^3.x  c.b^-7.c^4.b^-5.x     c^6.e^2.x            
#> [10] e^-3.d^5.a^-5.x
a-b
#>  [1] a.d^5.a^-4.b^5.e^-3.x^-1 a.e^2.b^2.x^-1           a^3.e^-7.b^-3.x^-1      
#>  [4] b^7.d^4.x^-1             a^2.b^-4.c^-4.x^-1       a^-5.d^3.c^3.x^-1       
#>  [7] d^-5.e^-1.d^-5.e^3.x^-1  c.b^-7.c^4.b^-5.x^-1     c^6.e^2.x^-1            
#> [10] e^-3.d^5.a^-5.x^-1
a^b
#>  [1] x^-1.a.d^5.a^-4.b^5.e^-3.x x^-1.a.e^2.b^2.x          
#>  [3] x^-1.a^3.e^-7.b^-3.x       x^-1.b^7.d^4.x            
#>  [5] x^-1.a^2.b^-4.c^-4.x       x^-1.a^-5.d^3.c^3.x       
#>  [7] x^-1.d^-5.e^-1.d^-5.e^3.x  x^-1.c.b^-7.c^4.b^-5.x    
#>  [9] x^-1.c^6.e^2.x             x^-1.e^-3.d^5.a^-5.x
```

There are a number of package functions that work in a vectorized way:

``` r
sum(a)
#> [1] a.d^5.a^-4.b^5.e^-3.a.e^2.b^2.a^3.e^-7.b^4.d^4.a^2.b^-4.c^-4.a^-5.d^3.c^3.d^-5.e^-1.d^-5.e^3.c.b^-7.c^4.b^-5.c^6.e^-1.d^5.a^-5
```

The package also supports extraction and replacement:

``` r
a[3:9] <- as.free('xy')
a
#>  [1] a.d^5.a^-4.b^5.e^-3 a.e^2.b^2           x.y                
#>  [4] x.y                 x.y                 x.y                
#>  [7] x.y                 x.y                 x.y                
#> [10] e^-3.d^5.a^-5
```

Various simple elements can be created:

``` r
alpha(1:10)
#>  [1] a b c d e f g h i j
abc(1:5)
#> [1] a         a.b       a.b.c     a.b.c.d   a.b.c.d.e
```

# References

- Wikipedia contributors, “Free group,” *Wikipedia, the free
  encyclopedia*, 4 June 2019.
  \[<https://en.wikipedia.org/w/index.php?title=Free_group&oldid=900295259>\]

# Further information

For more detail, see the package vignette

`vignette("freegroup")`
