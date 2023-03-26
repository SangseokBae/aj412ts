#' qstat() Function
#' 
#' This function prints photomanteau test statistics.
#' 

qstat<-function(resid, nlag=15){
   Q.stat=c(); Q.prob=c()
   for(i in 1:nlag){
   Temp.stat<-Box.test(resid, lag=i, type='Ljung-Box')$statistic
   Q.stat=c(Q.stat, Temp.stat)
   Temp.prob<-Box.test(resid, lag=i, type='Ljung-Box')$p.value
   Q.prob=c(Q.prob, Temp.prob)}
   Temp=as.matrix(rbind(Q.stat, Q.prob))
   Temp=t(Temp) ; Temp.number=c()
   for(j in 1:nlag){
   Temp.number=c(Temp.number, j) }
   rownames(Temp)<-Temp.number ; print(Temp) }
