library(ggplot2)

ggplot(data=airquality)+geom_point((mapping=aes(x=Temp, y=Ozone)))

str(airquality)

ggplot(data=airquality)+geom_point(mapping=aes(x=Temp, y=Ozone, color=Wind))

ggplot(data=iris)+geom_point((mapping=aes(x=Sepal.Length, y=Sepal.Width)))

ggplot(data=iris) + geom_point(mapping=aes(x = Sepal.Length, y = Sepal.Width, color = Species))
