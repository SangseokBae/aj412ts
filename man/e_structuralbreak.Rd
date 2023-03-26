\name{e_structuralbreak}
\alias{e_structuralbreak}
\title{structuralbreak}
\usage{
e_structuralbreak()
}
\description{
e_structuralbreak()
}
\examples{
library(strucchange)
library(changepoint); library(tidyverse); library(lubridate)
Result01 <- cpt.mean(Adata$growth, penalty = 'BIC', method = 'PELT')
plot(Result01, type = 'l', cpt.col = 'blue', xlab = 'Index', cpt.width = 4)
cpts(Result01)
Result02 <- cpt.meanvar(Adata$growth, method = 'PELT')
plot(Result02, type = 'l', cpt.col = 'blue', xlab = 'Index', cpt.width = 4)
slice(cpts(Result02))
cusum <- efp(growth ~ lag(growth), type = 'OLS-CUSUM', data = Adata)
plot(cusum)
Result03 <- Fstats(Adata$growth ~ lag(Adata$growth, data=Adata))
breakpoints(Result03)
}
