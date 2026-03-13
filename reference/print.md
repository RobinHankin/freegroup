# Print free objects

Print methods for free objects

## Usage

``` r
# S3 method for class 'free'
print(x,...)
as.character_free(m,latex=getOption("latex"))
```

## Arguments

- x:

  Object of class `free` in the print method

- m:

  A two-row matrix in function `as.character_free()`

- latex:

  Boolean, with `TRUE` meaning to print latex-friendly output including
  curly braces, and default `NULL` option meaning to give a
  nicer-looking output that latex would typeset incorrectly

- ...:

  Further arguments, currently ignored

## Author

Robin K. S. Hankin

## Note

The print method does not change the internal representation of a `free`
object, which is a list of integer matrices.

The default print method uses multiplicative notation (powers) which is
inconsistent with the juxtaposition method “`+`”.

The print method has special dispensation for length-zero free objects
but these are not handled entirely consistently.

The default print method uses lowercase letters a-z, but it is possible
to override this using `options("freegroup_symbols" = foo)`, where `foo`
is a character vector. This is desirable if you have more than 26
symbols, because unallocated symbols appear as `NA`.

The package will allow the user to set `options("freegroup_symbols")` to
unhelpful things like `rep("a",20)` without complaining (but don't
actually do it, you crazy fool).

## See also

[`char_to_free`](https://robinhankin.github.io/freegroup/reference/char_to_free.md)

## Examples

``` r
## default symbols:

abc(26)
#> [1] a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p.q.r.s.t.u.v.w.x.y.z
rfree(1,10)
#> [1] i^7.g^6.i^9.h^4.b^2.c^-8.g^10.j^7.e^6.j^9


# if we need more than 26:
options(freegroup_symbols=state.name)
rfree(10,4)
#>  [1] Alabama.Alaska^4.Arkansas^-2.Arizona       
#>  [2] Alabama^3.Arkansas^2                       
#>  [3] Arkansas^-4.Arizona^-2                     
#>  [4] Arizona^-4                                 
#>  [5] Arkansas^-2.Arizona^2.Alabama^-1           
#>  [6] Alabama^2.Alaska^2.Arkansas^3              
#>  [7] Alabama^-4.Arizona^4.Alabama^-2.Alaska^-3  
#>  [8] Arizona^2.Alaska^-3.Arkansas               
#>  [9] Arkansas^4.Alaska^-3.Arizona^-4.Arkansas^-1
#> [10] Arizona^4.Alabama^-2                       

# or even:
jj <- letters[1:10]
options(freegroup_symbols=apply(expand.grid(jj,jj),1,paste,collapse=""))
rfree(10,10,100,4)
#>  [1] ji^2.bd.dj.ge^2.dc^4.jb^4.bc^4.bg^4.eh^3.hi^3  
#>  [2] jd^4.cg^2.hj^3.ca.ag^2.ji^4.ai^2.fa^3.ie^4.jb^4
#>  [3] fi^5.cj^3.fj^2.ha^2.dg^4.de^3.cb^4.jc^4.ei^4   
#>  [4] cg.gc^3.fi^4.if.ed.eg^3.bg^3.gg.ii^2.bb        
#>  [5] cc^2.cf.dg^3.cj.fd^2.ga^3.jj.bh.dg^3.dc        
#>  [6] jc^3.hg^3.db^3.aj^3.ed^4.jc^3.gf.bi^4.ag^4.ib  
#>  [7] eb^4.ba.ha^4.ab^2.gj.bb^2.fi^2.ah^2.ia^2.cg^3  
#>  [8] bg^4.hi^2.ig^2.cb^2.hh^4.ah^3.jd.gg^2.ef^5     
#>  [9] eh^2.hc^2.hj^3.jf.fd^3.de.ih^3.ii^4.df.ec      
#> [10] je^4.ji.hc^4.eb.ia^4.ee^4.fh^3.hb^3.hh^2.jg^4  

options(freegroup_symbols=NULL)  #  NULL is interpreted as letters a-z
rfree(10,4)            #  back to normal
#>  [1] b^-4.a^4.c^4.a^3 b^-4.c^4         c.d^-3.c^-1      d^-2.b^2        
#>  [5] b.a^-1           d^2.b^-4         d^3.c^-1.d       d^-1.c^-1.d     
#>  [9] c^9.b^2          c^-4.b^4.c^-1   
```
