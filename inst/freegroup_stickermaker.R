library("hexSticker")
debug <- FALSE
if(debug){
  colors <- c("black","red","blue","green")
  } else {
    colors <- rep("black",4)
  }
    
`sixway` <- function(p, l, dopoints=TRUE, ...){
  a <- seq(from = pi/2,by=pi/3,len=6)
  if(dopoints){
    for(theta in a){
      segments(x0=p[1],
               y0=p[2],
               x1=p[1] + l*cos(theta),
               y1=p[2] + l*sin(theta), lwd=5, ...)
    }
  } else {
    return(cbind(p[1] + l*cos(a),p[2] + l*sin(a)))
  }
}

png(file="freegroup_icon.png",width=1000,height=1000,bg="transparent")

plot(NA,xlim=c(-1.5,1.5),ylim=c(-1.5,1.5),asp=1,axes=FALSE,xlab="",ylab="")
sixway(c(0,0),1,dopoints=TRUE,col=colors[1])

for(i in 1:6){
  a <- sixway(c(0,0),1,FALSE)[i,]
  sixway(a,1/3,col=colors[2])
  aa <- a 
  for(j in 1:6){
    if(abs(i-j) != 3){
      sixway(aa +  sixway(c(0,0),1/3,FALSE)[j,],1/9,col=colors[3])
      aaa <- aa
      for(k in 1:6){
        if(abs(j-k) != 3){
          sixway(aaa + sixway(c(0,0),1/3,FALSE)[j,]+sixway(c(0,0),1/9,FALSE)[k,],1/27,col=colors[4])
        }
      }
    }
  }
}
   
dev.off()

library("hexSticker")


sticker("freegroup_icon.png", package="freegroup", p_size=8, s_x=0.975, s_y=0.98,
s_width=1.1,asp=0.85, white_around_sticker=TRUE, h_fill="#7733FF",
h_color="#000000", filename="freegroup.png")
