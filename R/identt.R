# identt() Function
#
# This function draws ACF & PACF
# 

identt<-function(xdatas, lagx=15){
 x<-xdatas
 lagxx<-lagx
 par(mfrow=c(1,2))
 cat('ACF values frome First period ----', '\n')
 cat('---------------------------------------', '\n')
 acgraph(x, lagxx)
 cat('PACF values frome First period ----', '\n')
 cat('---------------------------------------', '\n')
 pacgraph(x, lagxx) 
 }

