# Absolute value of a `free` object

Replaces every term's power with its absolute value

## Usage

``` r
# S3 method for class 'free'
abs(x)
```

## Arguments

- x:

  Object of class `free`

## Details

Replaces every term's power with its absolute value

## Author

Robin K. S. Hankin

## Note

The function's name is motivated by the inequality in the examples
section.

## See also

[`subs`](https://robinhankin.github.io/freegroup/reference/subs.md)

## Examples

``` r
abs(abc(-5:5))
#>  [1] e.d.c.b.a d.c.b.a   c.b.a     b.a       a         0         a        
#>  [8] a.b       a.b.c     a.b.c.d   a.b.c.d.e

a <- rfree(10,4,7)
b <- rfree(10,4,7)

a
#>  [1] d^4.f^-2.b^2.d^-3 c^5.b^-3.d^4      e^-1.b^-3.g^-3    e^-1.d^3.b^-3    
#>  [5] a^4.f.a           a^-2.g.d^-1       a^-2.g^3.a^-3.d^2 e^2.f^-1.c^-3    
#>  [9] b.g^3.d^2         a^8.f^-3         
abs(a)
#>  [1] d^4.f^2.b^2.d^3 c^5.b^3.d^4     e.b^3.g^3       e.d^3.b^3      
#>  [5] a^4.f.a         a^2.g.d         a^2.g^3.a^3.d^2 e^2.f.c^3      
#>  [9] b.g^3.d^2       a^8.f^3        

## following should all be TRUE:
all(size(abs(a+b))  <=  size(abs(a) + abs(b)))
#> [1] TRUE
all(total(abs(a+b)) <=  total(abs(a) + abs(b)))
#> [1] TRUE
all(number(abs(a+b)) <= number(abs(a) + abs(b)))
#> [1] TRUE

all(size(a+b)   <= size(abs(a) + abs(b)))
#> [1] TRUE
all(total(a+b)  <= total(abs(a) + abs(b)))
#> [1] TRUE
all(number(a+b) <= number(abs(a) + abs(b)))
#> [1] TRUE
```
