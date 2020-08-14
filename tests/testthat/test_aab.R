
library("permutations")

test_that("Test suite aab.R",{


`autosub_checker`  <- function(X,S){ 
    expect_true(all(X == X %>% autosub('a',S) %>% autosub('a',-S)))
    }

`permsymb_checker` <- function(X,p){
    expect_true(all(X== X %>% permsymb(as.function(p)) %>% permsymb(as.function(-p))))
    }

for(n in 3:9){
    for(r in 5:6){
        autosub_checker(X=rfree(n,r), S=discard(rfree(1,r),'a'))
        permsymb_checker(X=rfree(n,r), p=rperm(n,r))
    }
}

})
