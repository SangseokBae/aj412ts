#' dlog() Function
#' 
#' Taking log then differencing data
#' 

dlog<-function(x){
  tmp_k<-0
  
  for(i in 1:length(x)){
  if(is.na(x[i]) & !is.na(x[i+1])  ) {
  tmp_k <- (i+1)
  break
  }}
  
  
  if(tmp_k>0) {
  tmp_x<-x[tmp_k:length(x)]
  logx<-log(tmp_x)
  m2<- logx[-1]-logx[-length(tmp_x)]
  return( c(NA[1:tmp_k], m2) )
  }

    
  if(tmp_k==0) {
  logx<-log(x)
  return( c(NA, (logx[-1]-logx[-length(x)])) )
  }

}
