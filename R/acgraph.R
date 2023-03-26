#' ident() Function
#' 
#' This function draws ACF & PACF
#' 

acgraph=function(x, lags=15){
  r=c(); v=c()
  n=length(x)
  for (k in 1:lags){
    r=c(r, ac(x,k)) 
    v=c(v,(1+2*sum(r[-1]^2))/n ) }
barplot(r, lwd=2, col='red', ylim=c(-1, 1), border=NA,
       xlab='LAG', ylab="ACF", names.arg=1:lags); 
   abline(h=0)
#  points(1:max(lags),2*sqrt(v), lty=3, type='l', col='blue');
#  points(1:max(lags),-2*sqrt(v), lty=3, type='l', col='blue');
#  names(r)=1:lags
   abline(h=2/sqrt(n), lty=3, col='blue')
   abline(h=-2/sqrt(n), lty=3, col='blue')
   print(r)
  return(r) }
  