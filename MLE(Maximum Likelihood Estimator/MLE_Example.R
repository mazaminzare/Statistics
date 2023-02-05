# Maximum Likelihood Estimator

data = c(5,17,13,15,25,6,18)

 
Likelihood = function(theta) prod(dpois(data, lambda = theta ))

theta = seq(0,30, by=.1)
plot(theta, sapply(theta,Likelihood ))




data = c(5,17,13,15,25,6,18)


LogLikelihood = function(theta) sum(log(dpois(data, lambda = theta )))

theta = seq(0,30, by=.1)
plot(theta, sapply(theta, LogLikelihood ))