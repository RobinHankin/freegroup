# Write free objects backwards

Write free objects in reverse order

## Usage

``` r
backwards(x)
```

## Arguments

- x:

  Object of class `free`

## Author

Robin K. S. Hankin

## Note

For each element of a `free` object, function `backwards()` writes the
symbols in reverse order. It is distinct from
[`rev()`](https://rdrr.io/r/base/rev.html), see examples.

Function backwards is an involution: it is its own inverse.

## Examples

``` r
abc(1:5)
#> [1] a         a.b       a.b.c     a.b.c.d   a.b.c.d.e
backwards(abc(1:5))
#> [1] a         b.a       c.b.a     d.c.b.a   e.d.c.b.a
rev(abc(1:5))
#> [1] a.b.c.d.e a.b.c.d   a.b.c     a.b       a        

x <- rfree(10,5)
backwards(backwards(x)) == x  # involution
#>  [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
all(abelianize(x) == abelianize(backwards(x))) # should be TRUE
#> [1] TRUE
```
