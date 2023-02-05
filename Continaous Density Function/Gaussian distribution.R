PDF <- function(z) 1/sqrt(2*pi)*exp(-z^2/2)
z<- seq(-5,5, by=0.1)
plot(z, PDF(z))

plot(z, dnorm(z))
plot(z,pnorm(z)) # show the CDF of Normal density

print(data.frame(z,pnorm(z)))

# masahat zir nemodar ba z=2 

print(1-2*(1-9.772499e-01))
print(1-2*(1-9.986501e-01 ))