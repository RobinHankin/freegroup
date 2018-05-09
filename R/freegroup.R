`as.free` <- function(x){  # x is a list
    if(is.matrix(x)){
        return(free(x))
    } else if(identical(x,0)|identical(x,0L)){
        return(free(matrix(0,2,0)))
    } else if (is.vector(x)){
        return(vec_to_free(x))
    } else if(is.character(x)){
        return(char_to_free(x))
    } else {
        return(lapply(x,free))
    }
}

`is.free` <- function(x){inherits(x,"free")}

`free` <- function(x){ # x is a list, each element is a two-row matrix
    if(is.matrix(x)){x <- list(x)}
    stopifnot(all(unlist(lapply(x,is_proper))))
    x <- reduce(x)
    class(x) <- "free"  # This is the *only* place the class is set
    return(x)
}

`char_to_free` <- function(x){
  free(
      sapply(x,
             function(x){
               rbind(as.numeric(charToRaw(x))-96,1)
             }, simplify=FALSE)
  )
}

`vec_to_free` <- function(x){
  free(sapply(x,function(o){cbind(o,sign(o))}))
}

`print.free` <- function(x, ...){
    print(noquote(unlist(lapply(x,as.character_free,...))))
    return(invisible(x))
}

`as.character_free` <- function(m,latex=getOption("latex")){ # takes a matrix

    symbols <- getOption("symbols")
    if(is.null(symbols)){symbols <- letters}
    if(ncol(m)==0){return("0")}
    if(isTRUE(latex)){
        open <- "{"
        close <- "}"
    } else {
        open <- ""
        close <- ""
    }
    f <- function(x){
        ifelse(
            x[2]==1,
            symbols[x[1]],
            paste(symbols[x[1]],"^",open,x[2],close,sep="")
        )
    }
    paste(apply(m,2,f),collapse=".")
}

`remove_zero_powers` <- function(a){a[,a[2,,drop=FALSE]!=0,drop=FALSE]}

`is_proper` <- function(a){
    if(is.list(a)){
        return(lapply(a,is_proper))
        } else {
            return(
                is.matrix(a)     &&
                nrow(a) == 2     &&
                all(a==round(a)) &&
                all(a[1,] > 0)
            )
        }
}

`is_reduced` <- function(a){
    if(is.list(a)){
        return(lapply(a,is_reduced))  # Recall() does not work here
    } else {
        return(all(a[2,]!=0) && all(diff(a[1,]) != 0))
    }
}
   
`.gsr` <- function(a){  # gsr == Get Start Repeats
    cumsum(rle(a)$lengths)
}

`.gse` <- function(a){   # gse == Get Start & End [of a run]
    cbind(
        1L+length(a)-rev(.gsr(rev(a))),
        .gsr(a)
    )
}

`consolidate` <- function(a){
    jj <- .gse(a[1,])
    f <- function(i){sum(a[2,seq(from=jj[i,1],to=jj[i,2])])}
    rbind(
        rle(a[1,])$values,
        sapply(seq_len(nrow(jj)), f)
    )
}

`reduce` <- function(a){
    if(is.list(a)){
        return(lapply(a,reduce))
    } else {
        while(!is_reduced(a)){
            a %<>% consolidate %<>% remove_zero_powers
        }
        return(a)
    }
}

`c.free` <- function(...){
    if(!all(unlist(lapply(list(...),is.free)))){
        stop("all arguments must be the same class")
    } else {
        return(free(unlist(list(...),recursive=FALSE)))
    }
}

`[.free` <- function(x,...){ free(unclass(x)[...])}

`[<-.free` <- function(x, index, value){
    out <- unclass(x)
    out[index] <- value
    return(free(out))
}

`rfree` <- function(n,size,howmanyletters=size,powers=seq(from=-size,to=size)){
  out <- list()
  for(i in seq_len(n)){
    out[[i]] <- 
      rbind(
          sample(howmanyletters,size,replace=TRUE),
          sample(powers,size,replace=TRUE)
      )
  }
  return(free(out))
}

`abc` <- function(n){
  free(sapply(n,function(o){rbind(seq_len(o),1)},simplify=FALSE))
}

`is.identity` <- function(x){x==as.free(0)}

`is.cyclically.reduced` <- function(a){unlist(lapply(unclass(a), function(o){o[1,1]!=o[1,ncol(o)]}))}
  
`is.cyclically.reduced2` <- function(a){
  a %>% unclass %>% lapply(function(o){o[1,1]!=o[1,ncol(o)]}) %>% unlist
}  

`abelianize` <- function(x){
  lapply(x,
         function(o){  # takes a 2-row matrix
           jj <- unclass(by(o[2,],o[1,],sum))
           rbind(as.numeric(names(jj)),jj)
         }) %>% free
}

`sum.free` <- function(..., na.rm=FALSE){
  free(do.call("cbind",lapply(unclass(list(...)),function(x){do.call("cbind",x)})))
}

`rep.free` <- function(x, ...){
    u <- seq(length.out = length(x))
    return(x[rep(u, ...)])
}
