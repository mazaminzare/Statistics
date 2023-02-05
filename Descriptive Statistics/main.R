# Descriptive Statistics

data(iris)
print(head(iris))
print(table(iris$Species))
plot(iris$Sepal.Length, iris$Sepal.Width)

library(ggplot2)
ggplot(iris, aes(iris$Sepal.Length,iris$Sepal.Width, 
                 color=Species)) +geom_point() +theme_bw()
dev.off

iris.setosa<- subset(iris, Species == "setosa")
iris.virginica<- subset(iris, Species == "virginica")
iris.versicolor<- subset(iris, Species == "versicolor")
ggplot(iris.setosa, aes(Sepal.Length,Sepal.Width)) +geom_point() +geom_density2d() +theme_bw()

print(cor(iris$Sepal.Length,iris$Sepal.Width))
print(cov(iris$Sepal.Length,iris$Sepal.Width))
print(cor(iris.setosa$Sepal.Length,iris.setosa$Sepal.Width))
print(cov(iris.setosa$Sepal.Length,iris.setosa$Sepal.Width))
print(cor(iris.versicolor$Sepal.Length,iris.versicolor$Sepal.Width))
print(cov(iris.versicolor$Sepal.Length,iris.versicolor$Sepal.Width))
print(cor(iris.virginica$Sepal.Length,iris.virginica$Sepal.Width))
print(cov(iris.virginica$Sepal.Length,iris.virginica$Sepal.Width))

# data summary
summary(iris)
