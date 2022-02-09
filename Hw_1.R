show(iris)

nrow(iris)
ncol(iris)

iris[1:10,]
iris$Sepal.Length

iris[,c("Sepal.Length")]
length(iris$Sepal.Length)

mean(iris$Sepal.Length)

iris[iris$Sepal.Length>7.6,]

which(iris$Sepal.Length>7.6)

iris[iris$Species == "setosa",]

iris[iris$Sepal.Length>3.0 & iris$Species == "setosa",]

max(iris$Sepal.Length)

iris[which.max(iris$Sepal.Length),]
which(iris$Sepal.Length==max(iris$Sepal.Length))

iris [ iris$Sepal.Length == max ( iris$Sepal.Length) , ] 

iris[which.max(iris$Sepal.Length),]$Species
