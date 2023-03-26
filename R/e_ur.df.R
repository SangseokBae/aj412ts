# ur.df

e_ur.df<-function(explaining=0){
if(explaining==0) {
cat(" library(urca) ", '\n')
cat(" # ur.df에서 selectlags를 지정하면 lag길이는 BIC를 근거로 자동으로 설정됨 ", '\n')
cat(" adftest<-ur.df(dlog(gdp_sa), type=c('none'),  selectlags=c('BIC')) ", '\n')
cat(" ## type = none, drift, trend ", '\n')
cat(" dYt = r*Yt-1 +e ", '\n')
cat(" tau2 : r=0 ", '\n')
cat(" ----------------------------------------------------------- ", '\n')
cat(" ur.df(dlog(gdp_sa), type=c('drift'),  selectlags=c('BIC')) ", '\n')
cat(" 		", '\n')
cat(" dYt = a0 + r*Yt-1 +e ", '\n')
cat(" tau2 : r=0 ", '\n')
cat(" phi1 : a0=r=0 ", '\n')
cat(" ----------------------------------------------------------- ", '\n')
cat(" adftest<-ur.df(dlog(gdp_sa), type=c('trend'),  selectlags=c('BIC')) ", '\n')
cat(" ## type = none, drift, trend ", '\n')
cat(" dYt = a0 + r*Yt-1 + a2*trend + e ", '\n')
cat(" tau3 : r=0 ", '\n')
cat(" phi3 : r=a2=0 ", '\n')
cat(" phi2 : a0=r=a2=0 ", '\n')
}}

