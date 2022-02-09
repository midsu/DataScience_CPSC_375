# CPSC 375-01
library(ggplot2)
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone))
str(airquality)
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone, color=Wind))
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone, color=Wind, size=Solar.R))
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone, size=Solar.R), color="red")
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone, color=Wind, shape=Solar.R)) #error
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone, color=Wind, shape=Month)) #error
airquality$Month = as.factor(airquality$Month)

ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone, color=Wind, shape=Month))
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone, color=Wind)) + facet_wrap(~Month)
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone)) + facet_grid(Wind~Month)

ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone))
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone)) + scale_x_continuous(name="Temperature")
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone)) + scale_x_continuous(name="Temperature", limits = c(60, 90))
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone)) + labs(x="Temperature", y="O3 values", title="My plot")
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone)) + labs(x="Temperature", y="O3 values", title="My plot") + theme_bw()
?theme_bw

# CPSC 375-02
library(ggplot2)
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone))
str(airquality)
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone, color=Wind))
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone, color=Wind, size=Solar.R))
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone, size=Solar.R), color="red")
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone, color=Wind))
?ggsave
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone, color=Wind)) + scale_x_continuous(name="Temperature")
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone, color=Wind)) + scale_x_continuous(name="Temperature") + scale_y_continuous(name="O3")
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone, color=Wind)) + labs(x="Displacement", y="Mileage", title="My plot")
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone, color=Wind)) + labs(x="Displacement", y="Mileage", title="My plot") + theme_bw()
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone, color=Wind)) + labs(x="Displacement", y="Mileage", title="My plot") + theme_dark()
?theme_dark
ggplot(data=airquality) + geom_point(mapping=aes(x = Temp, y = Ozone, color=Wind)) + labs(x="Displacement", y="Mileage", title="My plot", subtitle = "Anand P.
") + theme_dark()
