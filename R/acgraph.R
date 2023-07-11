#' ident() Function
#' 
#' This function draws ACF & PACF
#' 

acgraph=function(x, lags=15){
  r=c(); v=c()
  n=length(x)
  for (k in 1:lags){
     r=c(r, ac(x,k)) }
  
  barplot(r, col='steelblue', ylim=c(-1, 1), border=NA, xlab='LAG', ylab="ACF", names.arg=1:lags); 
  box()
  abline(h=0)
  abline(h=2/sqrt(n), lty=3, col='black')
  abline(h=-2/sqrt(n), lty=3, col='black')
  print(r)
  return(r) }
  