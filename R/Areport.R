# reporting Arima result

Areport<-function(Re2XX){


df_value<-Re2XX$nobs-length(Re2XX$coef)

coeffs<-Re2XX$coef
se_coeffs<-(sqrt(diag(Re2XX$var.coef)))

m<-length(coeffs)
n<-length(se_coeffs)

r<-c()
if(m !=n ) {
for(i in 1:m)
  {if(coeffs[i] != 0) {r<-c(r, coeffs[i])}
   else next
  }
coeffs <- r
}


t_value <- coeffs/se_coeffs
p_value <-  round( ( 1- pt( abs( t_value ) , df_value ) ), 4)

coeff<-as.data.frame(coeffs)
t_value<-as.data.frame(t_value)
p_value<-as.data.frame(p_value)
temp<-cbind(coeffs, t_value, p_value)

cat('Number of Data: ',Re2XX$nobs,'\n')
cat('Number of Coefficients: ', length(Re2XX$coef),'\n')
cat('Degree of freedom: ', df_value, '\n')
cat('AIC: ', Re2XX$aic, '\n')
cat(' ', '\n')
temp<-round(temp,4)
print(temp)
}


