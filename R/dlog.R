#' dlog() Function
#' 
#' Taking log then differencing data
#' 

dlog<-function(x){
  logx<-log(x)
  c(NA, (logx[-1]-logx[-length(x)]))
}