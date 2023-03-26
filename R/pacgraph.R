#' pacgraph() Function
#' 
#' This function draws PACF
#' 

pacgraph=function(x, lags=15){
 n=length(x)
 b=c() 
 for (k in 1:lags){
  b=c(b, pac(x,k))}
  barplot(b, ylab='PACF', xlab='LAG', ylim=c(-1,1), border=NA,
           col='#f23500ff', names.arg=1:lags)
  box()
  abline(h=0)
  abline(h=2/sqrt(n), lty=3, col='blue')
  abline(h=-2/sqrt(n), lty=3, col='blue')
  return(b) }
