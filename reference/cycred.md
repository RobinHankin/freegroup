# Cyclic reductions of a word

Functionality to cyclically reduce words and detect conjugacy

## Usage

``` r
is.cyclically_reduced(a)
as.cyclically_reduced(a)
cyclically_reduce(a)
cyclically_reduce_tietze(p)
is.conjugate_single(u,v)
x %~% y
# S3 method for class 'free'
is.conjugate(x,y)
allconj(x)
```

## Arguments

- a,x,y:

  An object of class `free`

- p,u,v:

  Integer vector corresponding to Tietze form of a word

## Details

A `free` object is cyclically reduced iff every cyclic permutation of
the word is reduced. A reduced word is cyclically reduced iff the first
letter is not the inverse of the last one. A reduced word is cyclically
reduced if the first and last symbol differ (irrespective of power) or,
if identical, have powers of opposite sign. For example, `abac` and
`abca` are cyclically reduced but `abca^{-1}` is not. Function
`is.cyclically_reduced()` tests for this.

Function `as.cyclically_reduced()` takes a vector of free objects and
returns the elementwise cyclically reduced equivalents. Function
`cyclically_reduce()` is a synonym with better (English) grammar.

The identity is cyclically reduced: it cannot be shortened by a
combination of cyclic permutation followed by reduction. This ensures
that `is.cyclically_reduced(as.cyclically_reduced(x))` is always TRUE.
Also, it is clear that the identity should be conjugate to itself.

Two words \\a,b\\ are conjugate if there exists \\x\\ such that
\\ax=xb\\ (or equivalently \\a=x^{-1}bx\\). This is detected by function
`is.conjugate()`. Functions `is_conjugate_single()` and
`cyclically_reduce_tietze()` are lower-level helper functions.

Function `allconj()` returns all cyclically reduced words conjugate to
its argument.

## Author

Robin K. S. Hankin

## See also

[`reduce`](https://robinhankin.github.io/freegroup/reference/reduce.md)

## Examples

``` r
(x <- abc(1:9) - abc(9:1))
#> [1] a.i^-1.h^-1.g^-1.f^-1.e^-1.d^-1.c^-1.b^-1.a^-1
#> [2] a.b.h^-1.g^-1.f^-1.e^-1.d^-1.c^-1.b^-1.a^-1   
#> [3] a.b.c.g^-1.f^-1.e^-1.d^-1.c^-1.b^-1.a^-1      
#> [4] a.b.c.d.f^-1.e^-1.d^-1.c^-1.b^-1.a^-1         
#> [5] 0                                             
#> [6] a.b.c.d.e.f.d^-1.c^-1.b^-1.a^-1               
#> [7] a.b.c.d.e.f.g.c^-1.b^-1.a^-1                  
#> [8] a.b.c.d.e.f.g.h.b^-1.a^-1                     
#> [9] a.b.c.d.e.f.g.h.i.a^-1                        
as.cyclically_reduced(x)
#> [1] i^-1.h^-1.g^-1.f^-1.e^-1.d^-1.c^-1.b^-1
#> [2] h^-1.g^-1.f^-1.e^-1.d^-1.c^-1          
#> [3] g^-1.f^-1.e^-1.d^-1                    
#> [4] f^-1.e^-1                              
#> [5] 0                                      
#> [6] e.f                                    
#> [7] d.e.f.g                                
#> [8] c.d.e.f.g.h                            
#> [9] b.c.d.e.f.g.h.i                        

 a <- rfree(1000,3)
 all(size(as.cyclically_reduced(a)) <= size(a))
#> [1] TRUE
 all(total(as.cyclically_reduced(a)) <= total(a))
#> [1] TRUE
 all(number(as.cyclically_reduced(a)) <= number(a))
#> [1] TRUE



 x <- rfree(1000,2)
 y <- as.free('ab')
 table(conjugate = (x%~%y), equal = (x==y))  # note zero at top right
#>          equal
#> conjugate FALSE TRUE
#>     FALSE   981    0
#>     TRUE      9   10

 allconj(as.free('aaaaab'))
#> [1] a^5.b     b.a^5     a.b.a^4   a^2.b.a^3 a^3.b.a^2 a^4.b.a  
 allconj(sum(abc(seq_len(3))))
#> [1] a^2.b.a.b.c c.a^2.b.a.b b.c.a^2.b.a a.b.c.a^2.b b.a.b.c.a^2 a.b.a.b.c.a



 x <- rfree(1,10,8,8)
 all(is.id(allconj(x) + allconj(-x)[shift(rev(seq_len(total(x))))]))
#> [1] TRUE


```
