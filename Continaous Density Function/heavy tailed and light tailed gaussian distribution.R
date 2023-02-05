norm1<- rnorm(1000 , 0, 1)
norm2<- rnorm(1000,0,10)

x1<- data.frame(sd=1, value=norm1)
x2<- data.frame(sd=10, value=norm2)
x<-rbind(x1,x2) # bind to end
x$sd<-factor(x$sd)
print(head(x))
print(tail(x))
ggplot(x,aes(value, color = sd)) +geom_density()