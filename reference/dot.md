# Class “dot”

The dot object is defined in the
[freealg](https://CRAN.R-project.org/package=freealg) package, and
imported here, so that idiom like `.[x,y]` returns the commutator, that
is, `x^-1 y^-1 xy`.

## Arguments

- x:

  Object of any class

- i,j:

  elements to commute

- ...:

  Further arguments to `dot_error()`, currently ignored

## Value

Always returns an object of the same class as `xy`.

## Author

Robin K. S. Hankin

## Examples

``` r
.[as.free("x"), as.free("y")]
#> [1] x^-1.y^-1.x.y

.[abc(1:6),"z"]
#> [1] a^-1.z^-1.a.z                                   
#> [2] b^-1.a^-1.z^-1.a.b.z                            
#> [3] c^-1.b^-1.a^-1.z^-1.a.b.c.z                     
#> [4] d^-1.c^-1.b^-1.a^-1.z^-1.a.b.c.d.z              
#> [5] e^-1.d^-1.c^-1.b^-1.a^-1.z^-1.a.b.c.d.e.z       
#> [6] f^-1.e^-1.d^-1.c^-1.b^-1.a^-1.z^-1.a.b.c.d.e.f.z

x <- rfree()
y <- rfree()
z <- rfree()

.[x,y] == -x-y+x+y   # should be TRUE
#> [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE

abelianize(.[x,y])
#> [1] 0 0 0 0 0 0 0

## Jacobi identity _not_ satisfied with this definition:
is.id(.[x,.[y,z]] + .[y,.[z,x]] + .[z,.[x,y]])
#> [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE

## But the Hall-Witt identity is:
all(is.id(.[.[x,-y],z]^y + .[.[y,-z],x]^z + .[.[z,-x],y]^x))
#> [1] TRUE
```
