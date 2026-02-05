# Arithmetic Ops methods for the free group

Allows arithmetic operators to be used for manipulation of free group
elements such as addition, multiplication, powers, etc

## Usage

``` r
# S3 method for class 'free'
Ops(e1, e2)
free_equal(e1,e2)
free_power(e1,e2)
free_repeat(e1,n)
juxtapose(e1,e2)
# S3 method for class 'free'
inverse(e1)
# S3 method for class 'matrix'
inverse(e1)
```

## Arguments

- e1,e2:

  Objects of class `free`

- n:

  An integer, possibly non-positive

## Details

The function `Ops.free()` passes binary arithmetic operators (“`+`”,
“`-`”, “`*`”, “`^`”, and “`==`”) to the appropriate specialist function.

There are two non-trivial basic operations: juxtaposition, denoted
“`a+b`”, and inversion, denoted “`-a`”. Note that juxtaposition is
noncommutative and `a+b` will not, in general, be equal to `b+a`.

All operations return a reduced word.

The caret, as in `a^b`, denotes group-theoretic exponentiation
(`-b+a+b`); the notation is motivated by the identities
`x^(yz) == (x^y)^z` and `(xy)^z == x^z * y^z`, as in the `permutations`
package.

**As an experimental feature** the package now accepts multiplicative
notation, so these identities manifest in package idiom as written.
However, this renders distributivity incorrect so that `x*(y + z)` and
`x*y + x*z` are not equal, in general \[distributivity manifests as
`x*c(y, z) == c(x*y, x*z)`\].

Multiplication between a free object `a` and an integer `n` (as in `a*n`
or `n*a`) is defined as juxtaposing `n` copies of `a` and reducing. Zero
and negative values of `n` work as expected.

Comparing a `free` object with a numeric does not make sense and idiom
such as `rfree() > 4` will return an error. Comparing a `free` object
with another `free` object might be desirable \[specifically,
lexicographic ordering\], but is not currently implemented.

## Author

Robin K. S. Hankin

## Note

The package uses additive notation but multiplicative notation might
have been better.

## Examples

``` r

x <- as.free(c("a","ab","aaab","abacc"))
y <- as.free(c("aa","BA","Bab","aaaaa"))
x
#> [1] a         a.b       a^3.b     a.b.a.c^2
y
#> [1] a^2       b^-1.a^-1 b^-1.a.b  a^5      


x + x
#> [1] a^2                 a.b.a.b             a^3.b.a^3.b        
#> [4] a.b.a.c^2.a.b.a.c^2
x + y
#> [1] a^3           0             a^4.b         a.b.a.c^2.a^5
x + as.free("xyz")
#> [1] a.x.y.z         a.b.x.y.z       a^3.b.x.y.z     a.b.a.c^2.x.y.z

x+y == y+x    # not equal in  general
#> [1]  TRUE  TRUE FALSE FALSE

x*5 == x+x+x+x+x      # always true
#> [1] TRUE TRUE TRUE TRUE

x + alpha(26)
#> [1] a.z         a.b.z       a^3.b.z     a.b.a.c^2.z

x^y
#> [1] a                 a.b               b^-1.a^-1.b.a^4.b a^-4.b.a.c^2.a^5 
```
