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
#> [1] j^10.b.a^4.d^-5.c^4.g^8.e^-5.b^-7.a^5.d^10


# if we need more than 26:
options(freegroup_symbols=state.name)
rfree(10,4)
#>  [1] Alabama^-2.Arkansas^-4                     
#>  [2] Arkansas                                   
#>  [3] Alabama^-4.Arkansas^-2.Arizona^2           
#>  [4] Arizona^-4.Alaska^-1.Alabama^2.Alaska^2    
#>  [5] Alabama.Arkansas^-4.Alabama^4.Arizona^-2   
#>  [6] Alaska^4.Arizona^-5.Alaska                 
#>  [7] Arkansas^4.Alaska^-3.Arizona^-4.Arkansas^-1
#>  [8] Arizona^4.Alabama^-2                       
#>  [9] Arkansas^2.Alaska                          
#> [10] Alaska^2.Arizona^3.Arkansas^-3.Alaska^-2   

# or even:
jj <- letters[1:10]
options(freegroup_symbols=apply(expand.grid(jj,jj),1,paste,collapse=""))
rfree(10,10,100,4)
#>  [1] ag^4.ji^2.ai^3.fa^4.ie^4.jb^2.dd^3.aj.ai^2.hj^2  
#>  [2] cj^3.fj^2.ha^2.dg^4.de^3.cb^4.jc^4.ei^4.hd^3.ef^3
#>  [3] fi^4.if.ed.eg^3.bg^3.gg.ii^2.bb.ee^3.ed          
#>  [4] dg.cj^2.fd^3.ga.jj.bh^3.dg.dc^2.hj.if^3          
#>  [5] hg^4.db^3.aj.ed^4.jc^4.gf.bi^3.ag^2.ib^7         
#>  [6] gj.bb^2.fi^2.ah^2.ia^2.cg^3.dc^2.ie^4.jj.jc      
#>  [7] hh^4.ah^3.jd.gg^2.ef^5.hc^3.fg^4.ba^2.fa^2       
#>  [8] jf^3.fd.de^3.ih^4.ii.df.ec^2.fc^2.ad^4.ii^3      
#>  [9] ia^4.ee^4.fh^3.hb^3.hh^2.jg^4.hc^2.ie.ha^3.gj    
#> [10] bb^2.gj^2.fb.ia.ch.jd^3.hj^4.ab^3.ii^3.aa^2      

options(freegroup_symbols=NULL)  #  NULL is interpreted as letters a-z
rfree(10,4)            #  back to normal
#>  [1] b^-3.a^3.b^4     b^2.c            a^-1.d.c^3.a^2   d               
#>  [5] d.c^3.d^-2       d^-1.b^3.c^2     b^4.d^2.c^3.b^-2 b^4.c^-1.a^-3   
#>  [9] c^-3.d^7.b^-4    d^-4.a.c        
```
