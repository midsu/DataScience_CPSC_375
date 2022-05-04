library(tidyverse)
kmeans(iris[,3:4], centers = 3)
km <- kmeans(iris[,3:4], centers = 3)
km$centers
ggplot(data=iris) + geom_point(aes(x=Petal.Width, y=Petal.Length)) + geom_point(data=as.data.frame(km$centers), mapping=aes(x=Petal.Width, y=Petal.Length), color="red", size=5)
km$cluster
table(iris$Species, km$cluster)
km <- kmeans(iris[,3:4], centers = 3)
table(iris$Species, km$cluster)
km <- kmeans(iris[,3:4], centers = 3, nstart = 1000)
