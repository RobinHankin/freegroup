`sixway` <- function(p, l, dopoints=TRUE, ...){
  a <- seq(from = pi/2,by=pi/3,len=6)
  if(dopoints){
    for(theta in a){
      segments(x0=p[1],
               y0=p[2],
               x1=p[1] + l*cos(theta),
               y1=p[2] + l*sin(theta), ...)
    }
  } else {
    return(cbind(p[1] + l*cos(a),p[2] + l*sin(a)))
  }
}

plot(NA,xlim=c(-1.5,1.5),ylim=c(-1.5,1.5),asp=1,axes=FALSE,xlab="",ylab="")
sixway(c(0,0),1,dopoints=TRUE)

for(i in 1:6){
  a <- sixway(c(0,0),1,FALSE)[i,]
  sixway(a,1/3,col="red")
  aa <- a 
  for(j in 1:6){
    if(abs(i-j) != 3){
      sixway(aa +  sixway(c(0,0),1/3,FALSE)[j,],1/9,col="blue")
    }
  }
}
   
    
