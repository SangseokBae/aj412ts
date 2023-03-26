#' dlog() Function
#' 
#' Taking log then differencing data
#' 

dlog<-function(x){
  logx<-log(x)
  dlogx<-diff(logx) }
