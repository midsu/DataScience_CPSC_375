library(ggplot2)

summary(iris)

ggplot(data=iris)+geom_histogram(mapping = aes(x=Petal.Length), binwidth=0.2, color="orange")

