summary(iris)
library(ggplot2)
ggplot(data=iris) + geom_histogram(mapping = aes(x=Petal.Length))
ggplot(data=iris) + geom_histogram(mapping = aes(x=Petal.Length), binwidth = 1)
ggplot(data=iris) + geom_histogram(mapping = aes(x=Petal.Length), binwidth = 5)
ggplot(data=iris) + geom_histogram(mapping = aes(x=Petal.Length), binwidth = 0.2)

x <- c(36, 42, 100, 28, 17, 12, 9, 4, 1)
sort(x)
median(x)
IQR(x)
quantile(x)
36 + 1.5 * 27
9 -  1.5 * 27
ggplot(data=x) + geom_boxplot(mapping = aes(x=x)) #error
data.frame(col1=x)
mydata <- data.frame(col1=x)
ggplot(data=mydata) + geom_boxplot(mapping = aes(y=col1))

ggplot(data=iris) + geom_boxplot(mapping=aes(y=Sepal.Width, x=Species))

ggplot(data=mpg)+ geom_bar(mapping = aes(x=class, fill=drv))
ggplot(data=mpg)+ geom_bar(mapping = aes(x=class, fill=drv), position = "dodge")

class(airquality$Month)
as.factor(airquality$Month)
airquality$Month <- as.factor(airquality$Month)
class(airquality$Month)
