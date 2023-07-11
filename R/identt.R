# identt() Function
#
# This function draws ACF & PACF
# 

identt<-function(xdatas, lagx=15){
 par(mfrow=c(1,2))
 cat('ACF values frome First period ----', '\n')
 cat('---------------------------------------', '\n')
 acgraph(xdatas, lagx)
 cat('PACF values frome First period ----', '\n')
 cat('---------------------------------------', '\n')
 pacgraph(xdatas, lagx) 
 }

