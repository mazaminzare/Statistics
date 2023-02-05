# Linear Regression

library(ggplot2)
library(tidyverse)

ggplot(iris, aes(Petal.Length, Petal.Width)) +geom_point()


linear_regression = function(x,y){
   beta1=cov(x,y) / var(x)
   beta0 = mean(y)-beta1*mean(x)
   sigma2 = mean((y - beta0 - beta1 * x)^2)
   list(beta0 = beta0, beta1 = beta1, sigma2 = sigma2)
} 


lr = linear_regression(iris$Petal.Width,iris$Petal.Length)


iris$Petal.Length.Predict = lr$beta0 + lr$beta1*iris$Petal.Width 

ggplot(iris) +geom_point(aes(Petal.Width, Petal.Length),color="black") +geom_point(aes(
  Petal.Width, Petal.Length.Predict
),color="red" )


mean((iris$Petal.Length - iris$Petal.Length.Predict)^2)


lm(Petal.Length~Petal.Width, iris)