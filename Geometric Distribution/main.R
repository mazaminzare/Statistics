# Geometric distribution 

p=0.3
PMF = function(p,k) (1-p)^(k-1)*p

k=1:200000
#plot(k,PMF(p,k))
print(sum(k*PMF(p,k))) # Expected
print(sum((k-1/p)^2*PMF(p,k))) #var


sample=rgeom (200000,p) +1 #geometric distribution 
print(head(sample,30))
hist(sample)
print(mean(sample))
print(var(sample))

print(sum(PMF(p,1:4)))
print(mean(sample<=4))