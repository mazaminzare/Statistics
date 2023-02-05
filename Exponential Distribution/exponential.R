# Exponential Distribution

PDF <- function(lambda,x) lambda*exp(-lambda*x)

x=seq(0,3,by=.1)
lambda = 5

plot(x,PDF(lambda,x))


