library(ggplot2)
library(tidyverse)
library(modelr)
m <- lm(data=iris, Petal.Length~Petal.Width)
iris %>% View()
#Checking assumptions
iris %>% add_residuals(m) %>% view()
iris <- iris %>% add_residuals(m)
iris %>% View()
ggplot(data=iris) + geom_histogram(aes(x=resid))
ggplot(data=iris) + geom_point(aes(x=Petal.Width, y=resid))
residuals(m)

#outliers
rstandard(m)
iris %>% mutate(rstd = rstandard(m)) %>% view()
iris %>% mutate(rstd = rstandard(m)) %>% filter(rstd > 2)
iris %>% mutate(rstd = rstandard(m)) %>% filter(abs(rstd) > 2)
iris %>% mutate(rstd = rstandard(m)) %>% filter(rstd > 2, rstd < -2)
iris %>% mutate(rstd = rstandard(m)) %>% filter(rstd > 2| rstd < -2)
irisOutliers <- iris %>% mutate(rstd = rstandard(m)) %>% filter(rstd > 2| rstd < -2)
mycf <- coef(m)
ggplot(data=iris) + geom_point(mapping = aes(y=Petal.Length, x=Petal.Width)) + geom_abline(slope=mycf[2], intercept = mycf[1], color="red")
ggplot(data=iris) + geom_point(mapping = aes(y=Petal.Length, x=Petal.Width)) + geom_abline(slope=mycf[2], intercept = mycf[1], color="red") + geom_point(data=irisOutliers, mapping = aes(y=Petal.Length, x=Petal.Width), color="red")

# predictions
predx <-data.frame(Petal.Width=c(0.5, 1.0, 2.0))
predx
predict(m, predx)
predict(m, predx, interval = "prediction")
predict(m, predx, interval = "confidence")
coefficients(m)
summary(m)
#Petal.Length = 1.083558 + 2.229940*Petal.Width
1.083558 + 2.229940*1.0
1.083558 + 2.229940*2.0
m <- lm(data=iris, Petal.Length~Petal.Width)

#Multiple linear regression
m <- lm(data=iris, Petal.Length~Petal.Width + Sepal.Length)
summary(m)

m2 <- lm(data=iris, Petal.Width~Petal.Length + Sepal.Length)
m1 <- lm(data=iris, Petal.Width~Petal.Length)
summary(m1)
summary(m2)
m3 <- lm(data=iris, Petal.Width~Petal.Length + Sepal.Length+Sepal.Width)
summary(m3)
iris.copy <- iris %>% mutate(x3=runif(150)) # adding a column with random values
iris.copy%>% view()
m4 <- lm(data=iris.copy, Petal.Width~Petal.Length + Sepal.Length+Sepal.Width+x3)
summary(m4)
