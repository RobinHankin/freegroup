library("freegroup")
library("permutations")

`autosub_checker`  <- function(n,n2=n,r,...){
  X <- rfree(n,r,...)
  S <- discard(rfree(1,r,...),'a')
  
  if(all(X == X %>% autosub('a',S) %>% autosub('a',inverse(S)))){
    return(TRUE)
  } else {
    dput(X)
    dput(S)
    stop()
  }
}
            
`permsymb_checker` <- function(n,n2=n,r,...){
  X <- rfree(n,r,...)
  p <- rperm(n,r) 
  
  if (all(X== X %>% permsymb(as.function(p)) %>% permsymb(as.function(inverse(p))))){
    return(TRUE)
  } else {
    dput(X)
    dput(p)
    stop()
  }
}

for(i in 1:2){
    for(j in 5:6){
        permsymb_checker(10,r=j)
        autosub_checker(10,r=j)
    }
}
