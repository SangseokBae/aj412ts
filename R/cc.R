#' cc() Function
#' 
#' This function makes CCF graph
#' 
cc=function(x,y,k=1){n=length(x)
                      mx=mean(x); my=mean(y)
                      sx=sqrt(sum((x-mx)^2)); sy=sqrt(sum((y-my)^2))
                      x=x[1:(n-k)];y=y[(k+1):n]; 
			 print(x); print(y);
                      cxy=sum((x-mx)*(y-my))
                      cxy/(sx*sy) }
					  