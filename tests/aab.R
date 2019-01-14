library("freegroup")
library("permutations")

`autosub_checker`  <- function(X,S){ 
    if(all(X == X %>% autosub('a',S) %>% autosub('a',inverse(S)))){
        return(TRUE)
    } else {
        dput(X)
        dput(S)
        stop()
    }
}

`permsymb_checker` <- function(X,p){
    if(all(X== X %>% permsymb(as.function(p)) %>% permsymb(as.function(inverse(p))))){
        return(TRUE)
    } else {
        dput(X)
        dput(p)
        stop()
    }
}

for(n in 3:9){
    for(r in 5:6){
        autosub_checker(X=rfree(n,r), S=discard(rfree(1,r),'a'))
        permsymb_checker(X=rfree(n,r), p=rperm(n,r))
     }
}
