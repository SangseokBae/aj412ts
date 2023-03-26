# e_hpfilter

e_hpfilter<-function(explaining=0){
if(explaining==0) {
cat(" library(mFilter) ", '\n')
cat(" gdp_sa<-ts(Adata$gdp, start=c(1960,1), frequency=4) ", '\n')
cat(" gdp_sa<-window(gdp_sa, start=c(1985,1), frequency=4) ", '\n')
cat(" HPgdp_sa<-hpfilter(gdp_sa,freq = 1600) ", '\n')
cat(" NOTE: month=14400 / quarter=1600 / year=1000 ", '\n')
cat(" plot(HPgdp_sa) ", '\n')
cat(" plot(HPgdp_sa$cycle, type='l', lty='twodash', col='red', lwd='2') ", '\n')
}}
