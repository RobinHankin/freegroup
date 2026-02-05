# Permute elements of a vector in a cycle

Given a vector, permute the elements with a cyclic permutation

## Usage

``` r
shift(x,i=1)
```

## Arguments

- x:

  Vector

- i:

  Integer, number of places to permute. Negative values mean to count
  from the end

## Details

This function is that of the
[magic](https://CRAN.R-project.org/package=magic) package, where it is
motivated and discussed.

## Value

Returns a vector

## Author

Robin K. S. Hankin

## Examples

``` r
shift(1:9)
#> [1] 9 1 2 3 4 5 6 7 8
shift(1:9,-1)
#> [1] 2 3 4 5 6 7 8 9 1

shift(1:9,2)
#> [1] 8 9 1 2 3 4 5 6 7

```
