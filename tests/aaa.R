 ## define some checker functions, call them at the end.  They should
 ## all return TRUE; these functions also check that the vectorization
 ## is OK; so for example f(1:10,1:10), f(1:10,1), f(1,1:10) should
 ## all return TRUE.
library(freegroup)

checker_x <- function(x){
  stopifnot(x==x)

  stopifnot(x == x + as.free(0))  
  stopifnot(x == -(-x))
  stopifnot(x == +(+x))

  stopifnot(x+x-x == x)

  stopifnot(is.id(x-x))

  stopifnot(0*x == as.free(0))
  stopifnot(1*x == x)
  stopifnot(2*x == x+x)
  stopifnot(3*x == x+x+x)
  stopifnot(4*x == x+x+x+x)
  stopifnot(5*x == x+x+x+x+x)
  stopifnot(6*x == x+x+x+x+x+x)

  stopifnot(x^x==x)
  stopifnot(x^id() == x)

  x1 <- rfree(1,1,10,1)
  x2 <- rfree(1,1,10,1)
  x3 <- rfree(1,1,10,1)

  stopifnot((x+x1)-x1 == x)
  stopifnot(x^(x1+x2) == (x^x1)^x2)
  stopifnot((x+x1)^x2 == x^x2 + x1^x2)
  stopifnot((x^x1)^(-x1) == x)

  stopifnot(abelianize(x+x1) == abelianize(abelianize(x)+x1))
  stopifnot(abelianize(abelianize(x)) == abelianize(x))
  stopifnot(abelianize(abelianize(sum(x))) == abelianize(sum(abelianize(x))))

  stopifnot(is.id(sum(x,rev(-x))))
  stopifnot(is.id(cumsum(c(x,-rev(x)))[2*length(x)]))
  stopifnot(cumsum(x)[length(x)] == sum(x))

  return(TRUE)
}


checker_xy <- function(x,y){
  stopifnot(x^y == -y+x+y)
  stopifnot(x+y == x-(-y))

  stopifnot((x^y)^(-y) == x)
  stopifnot(sum(x^y) == sum(x)^y)

  stopifnot(abelianize(x) == abelianize(x^y))
  stopifnot(abelianize(x+y) == abeliznize(x+abelianize(y)))


  stopifnot(sum(x,y) == sum(sum(x),sum(y)))

  return(TRUE)
}

checker_xyz <- function(x,y,z){
  stopifnot(x+(y+z) == (x+y)+z)
  stopifnot(x^(y+z) == (x^y)^z)
  stopifnot(x^z + y^z == (x+y)^z)

  abelianize(x^z - x^y) %>% abelianize %>% is.id %>% stopifnot
  stopifnot(sum(x,y,z) == sum(sum(x),sum(y),sum(z)))
}

check_abelianize <- function(n){
  stopifnot(abelianize(sum(abelianize(alpha(sample(n))))) == abc(n))
  return(TRUE)
  }



for(i in 1:100){
  print(i)
  x <- rfree(10,3,2)
  checker_x(x)
  
}
  
  

sapply(1:10,check_abelianize)
