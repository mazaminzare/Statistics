# Joint Distribution

library(ggplot2)
x<-rnorm(1000, mean = 1, sd=1)
y<-rnorm(1000, mean=3, sd = 5)

d<- data.frame(X=x, Y=y)
ggplot(d, aes(X,Y))+geom_point()
ggplot(d, aes(X,Y))+geom_density_2d()
ggplot(d, aes(X,Y))+geom_density2d()


# related x and y with uniform noise
x2<- rnorm(1000, mean=1, sd=1)
#y2<- 2*x2 + runif(1000, min=-3,max=3)
y2<-2*x2+ rnorm(1000,mean=1,sd=1)
d2<- data.frame(X=x2, Y=y2)
ggplot(d2, aes(X,Y))+geom_point()
ggplot(d2, aes(X,Y))+geom_density_2d()