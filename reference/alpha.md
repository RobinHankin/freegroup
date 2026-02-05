# Alphabetical free group elements

Produces simple vectors of free group elements based on the alphabet

## Usage

``` r
alpha(v)
abc(v)
```

## Arguments

- v:

  Vector of integers

## Details

Function `alpha()` takes an integer `i` and returns the letter `i` of
the alphabet. Thus `alpha(3)` returns `c`. The function is vectorised:
`alpha(1:3)` returns `a b c`.

Function `abc()` takes an integer `i` and returns letters 1 to `i` of
the alphabet. Thus `abc(4)` returns `a.b.c.d`. The function is
vectorised.

Remember that “letters of the alphabet” is just a phrase: above it
refers to the default print method which can be changed, see the
examples.

## Author

Robin K. S. Hankin

## Examples

``` r
alpha(5)  # just the single letter 'e'
#> [1] e
abc(5)    # product of a,b,c,d,e
#> [1] a.b.c.d.e

alpha(1:26)  # the whole alphabet; c
#>  [1] a b c d e f g h i j k l m n o p q r s t u v w x y z

all(alpha(1:26) == as.free(letters))  # should be TRUE
#> [1] TRUE

z <- alpha(26)  # variable 'z' is symbol 26, aka 'z'.
abc(1:10) ^ z
#>  [1] z^-1.a.z                   z^-1.a.b.z                
#>  [3] z^-1.a.b.c.z               z^-1.a.b.c.d.z            
#>  [5] z^-1.a.b.c.d.e.z           z^-1.a.b.c.d.e.f.z        
#>  [7] z^-1.a.b.c.d.e.f.g.z       z^-1.a.b.c.d.e.f.g.h.z    
#>  [9] z^-1.a.b.c.d.e.f.g.h.i.z   z^-1.a.b.c.d.e.f.g.h.i.j.z

abc(-5:5)
#>  [1] e^-1.d^-1.c^-1.b^-1.a^-1 d^-1.c^-1.b^-1.a^-1      c^-1.b^-1.a^-1          
#>  [4] b^-1.a^-1                a^-1                     0                       
#>  [7] a                        a.b                      a.b.c                   
#> [10] a.b.c.d                  a.b.c.d.e               
alpha(-5:5)
#>  [1] e^-1 d^-1 c^-1 b^-1 a^-1 0    a    b    c    d    e   
sum(abc(-5:5))
#> [1] 0


## bear in mind that the symbols used are purely for the print method:
jj <- LETTERS[1:10]
options(freegroup_symbols = apply(expand.grid(jj,jj),1,paste,collapse=""))
alpha(c(66,67,68,69))   # sensible output
#> [1] FG GG HG IG
options(freegroup_symbols=NULL)   # restore to symbols to default letters
alpha(c(66,67,68,69))   # print method not very helpful now
#> [1] NA NA NA NA
```
