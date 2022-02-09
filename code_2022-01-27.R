# CPSC 375-01
help(mean)
?mean
10 * 30
exp(10)
a <- 2
a
class(a)
class(TRUE)
a <-  c(10,20,30)
a
a[1]
a * 2
mean(a)
c(T, F, T)
seq(1,10)
1:10
myvec <- c(120, 23, 45, 54, 67)
myvec[1]
myvec[1:2]
doe <- list(name="john", age=28, married=F)
doe
doe[1]
doe$name
class(doe)
class(doe$name)
data.frame(localisation = c("proximal","distal", "proximal"), tumorsize = c(6.3,8.0, 10.0), progress=c(FALSE, TRUE,FALSE))
mydf <- data.frame(localisation = c("proximal","distal", "proximal"), tumorsize = c(6.3,8.0, 10.0), progress=c(FALSE, TRUE,FALSE))
mydf
mydf[2,3]
mydf[2,]
mydf[,3]
mydata <- c(10,20,30, 40, 45, 56, 74, 23, 300)
mydata
mydata[c(6,7,9)]
mydata > 50
mydata[mydata > 50]
iris
class(iris$Species)
levels(iris$Species)
iris
iris[1:10,]
iris[,"Sepal.Length"]
iris[,1]
iris$Sepal.Length
mean(iris$Sepal.Length)
mean(iris[,1])
#Show all rows where Sepal.Length > 7.6
iris$Sepal.Length > 7.6
iris[iris$Sepal.Length > 7.6,]
iris[iris[,1] > 7.6,]
iris$Sepal.Length > 7.6
which(iris$Sepal.Length > 7.6)

# CPSC 375-02
help(mean)
?mean
10 * 30
sqrt(64)
a <- 2
class(a)
class(TRUE)
a <-  c(10,20,30)
a
a[1]
a * 2
c(T, F, T)
seq(1,5)
1:5
a[1]
a[1:3]
1:3
doe <- list(name="john", age=28, married=F)
doe
class(doe)
doe[1]
doe$name
doe["name"]
data.frame(localisation = c("proximal","distal", "proximal"), tumorsize = c(6.3,8.0, 10.0), progress=c(FALSE,TRUE, FALSE))
df <- data.frame(localisation = c("proximal","distal", "proximal"), tumorsize = c(6.3,8.0, 10.0), progress=c(FALSE,TRUE, FALSE))
df
df[2,]
df[2]
a <- c(10, 25, 53, 15, 75, 24)
a
a[3,5]
a[c(3,5)]
# numerical indexing
a > 50
a[a > 50]
# logical indexing
a[a < 50]
a < 50
which(a < 50)
iris
class(iris$Species)
class(iris$Species)
iris
iris[1:10]
iris[1:10,]
iris[1]
iris$Sepal.Length
iris[1,]
iris[,1]
iris[,"Sepal.Length"]
iris[1:10,]
class(iris)
mean(iris[,1])
mean(iris$Sepal.Length)
mean(iris[1])
iris[1]
class(iris[1])
class(iris[,1])
iris$Sepal.Length>7.6
iris[iris$Sepal.Length>7.6,]
