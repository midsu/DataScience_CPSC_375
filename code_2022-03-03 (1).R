library(ggplot2)
?geom_abline
str(iris)
ggplot(data=iris) + geom_point(mapping = aes(y=Petal.Length, x=Petal.Width))
ggplot(data=iris) + geom_point(mapping = aes(y=Petal.Length, x=Petal.Width)) + geom_abline(slope=5, intercept = 2, color="red")
lm(data=iris, Petal.Length~Petal.Width)
ggplot(data=iris) + geom_point(mapping = aes(y=Petal.Length, x=Petal.Width)) + geom_abline(slope=2.230, intercept = 1.084, color="red")
m <- lm(data=iris, Petal.Length~Petal.Width)
summary(m)
coef(m)
mycf <- coef(m)
mycf
mycf[1]
mycf[2]
ggplot(data=iris) + geom_point(mapping = aes(y=Petal.Length, x=Petal.Width)) + geom_abline(slope=mycf[2], intercept = mycf[1], color="red")
coef(m)
m$coefficients
library(tidyverse)
mydata <- read_csv("autompg.csv")
setwd("C:/Users/apanangadan/Downloads")
mydata <- read_csv("autompg.csv")
summary(m)
iris %>% view()
library(modelr)
iris %>% add_residuals(m) %>% view()
iris <- iris %>% add_residuals(m)
iris %>% view()
ggplot(data=iris) + geom_histogram(aes(x=resid))
ggplot(data=iris) + geom_point(aes(x=Petal.Width, y=resid))
