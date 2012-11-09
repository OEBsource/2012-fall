#read in the data
read.table("antAbGood.txt.txt",header=T)->antAb
read.table("antHead.txt",header=T)->antHead

#create space for output
centerX=rep(NA,nrow(antAb))
centerY=centerX

#ENTER THE FOR LOOP
for(i in 1:length(centerX)){
  tempx=(antAb$X[i] + antHead$X[i])/2
  tempy=-(antAb$Y[i] + antHead$Y[i])/2
  
  centerX[i]=tempx
  centerY[i]=tempy
}

#transformation to start at 0
centerY=centerY-centerY[1]
centerX=centerX-centerX[1]

plot(x=centerX,y=centerY,type="l")
