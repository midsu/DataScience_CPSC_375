
x <- c(8,11,17,36,25,24,1,20,64)

summary(x)

sort(x)

quantile(x)

IQR(x)
#IQR = 75% - 25% -> 14

ggplot(data=iris)+geom_boxplot(mapping = aes(y=Petal.Length))

x <- c(8, 11, 17, 36, 25, 24, 1, 20, 64)
mydata <- data.frame(col1=x)
ggplot(data = mydata) + geom_boxplot(mapping = aes(y=col1))

