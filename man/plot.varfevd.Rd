\name{plot.varfevd}
\alias{plot.varfevd}
\title{Plotting VAR FEVD}
\usage{
plot.varfevd()
}
\description{
Plotting VAR FEVD
}
\examples{

# 변수가 8개이면 col=1:8로 지정함
tmp <- fevd(var, n.ahead = 48 )
plot.varfevd( tmp  , plot.type = "single", col=1:8)

# 각 변수별 설명 비율을 확인
Re.FEVD_percentage <- tmp$VariableName *100 

}