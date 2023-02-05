#Poisson distribution

fact = function(k) ifelse(k==0,1, prod(1:k))

PMF = function(lambda, k) exp(-lambda)*lambda^k/fact(k)

lambda = 5
k = seq(0:100)

pmf = sapply(k,PMF,lambda = lambda)

plot(k, pmf)

print(sum(k*pmf)) #mean

print(sum((k-lambda)^2*pmf))