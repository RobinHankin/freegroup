`nielsen_single_X` <- function(X,f){
    stopifnot(length(X) == 1)
    M <- rbind(f(X[[1]][1,]))
    p <-  X[[1]][2,]
    free(sapply(seq_len(nrow(M)),function(i){rbind(M[i,],p)},simplify=FALSE))
}

`nielsen_single_f` <- function(X,f){
    stopifnot(nrow(with(environment(f),x))==1)
    X <- unclass(X)
    for(i in seq_along(X)){
        X[[i]][1,] %<>% f
    }
    return(free(X))
}

`nielsen_vec` <- function(X,f){
    M <- with(environment(f),x)
    stopifnot(nrow(M) == length(X))

    for(i in seq_along(X)){
        X[[i]][1,] %<>% `[`(M,i,.)
    }
    return(X)
}

`nielsen` <- function(X,f){
    if(length(X)==1){
        return(nielsen_single_X(X,f))
    } else if(nrow(with(environment(f),x))==1){
        return(nielsen_single_f(X,f))
    } else {
        return(nielsen_vec(X,f))
    }
}

`nielseninv` <- function(X,s){
   for(i in seq_along(X)){
       X[[i]][2, X[[i]][1,] %in% s] %<>% `*`(-1)
    }
   return(X)
}

`nielsensubs_lowlevel` <- function(M,e,S){  # M is a matrix, e the
                                        # symbol to substitute, S the
                                        # substitutee

    stopifnot(length(e)==1)
    n <- ncol(S)
    out <- matrix(0L,2,n*sum(abs(M[2,M[1,]==e])) + sum(M[1,] != e))

    Splus <- S
    Sminus <- rbind(S[1,],-S[2,])[,n:1]
    j <- 1
    for(i in seq_len(ncol(M))){
        if(M[1,i]==e){
            if(M[2,i]>0){S <- Splus} else {S <- Sminus}
            r <- abs(M[2,i])
            out[,j:(j+n*r-1)] <- kronecker(t(rep(1,r)),S)
            j <- j + n*r
        } else {
            out[,j] <- M[,i]
            j <- j+1
        }
    }
    return(out)
}

`nielsensubs` <- function(X,e,S){
    stopifnot(length(S)==1)
    S <- S[[1]]
    out <- list()

    for(i in seq_along(X)){
        out[[i]] <- nielsensubs_lowlevel(X[[i]],e,S)
    }
    return(free(out))
}
