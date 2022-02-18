# CPSC 375-01
NA
5
x <- c(1, 2, NA, 5)
x
is.na(x)
airquality
complete.cases(airquality)
airquality[complete.cases(airquality), ]
complete.cases(airquality)
!complete.cases(airquality)
airquality[!complete.cases(airquality), ]
x
mean(x)
mean(x, na.rm = TRUE)
iris
class(iris$Species)
levels(iris$Species)

# CPSC 375-02
x <- c(1, 4, NA, 2)
x
length(x)
is.na(x)
mean(x)
mean(x, na.rm = FALSE)
mean(x, na.rm = TRUE)
airquality
complete.cases(airquality)
airquality[complete.cases(airquality), ]
View(airquality)
complete.cases(airquality)
View(airquality[complete.cases(airquality), ])
