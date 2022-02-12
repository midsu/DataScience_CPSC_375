library(ggplot2)

ggplot(data=mpg)+geom_point((mapping=aes(x=displ, y=cty)))

ggplot(data=mpg)+geom_point(mapping=aes(x=displ, y=cty)) + labs(x="Displacement",
      y = "City", title = "Hamid Suha, Kenn Son, Vivian Truong") + ylim(c(0,40)) + xlim(c(0,10))

ggplot(data=mpg)+geom_point(mapping=aes(x=displ, y=cty, size=year)) + labs(
  x="Displacement", y = "City", size = "Year", title = "Hamid Suha, Kenn Son, Vivian Truong"
) + ylim(c(0,40)) + xlim(c(0,10))


ggplot(data=mpg)+geom_point(mapping=aes(x=displ, y=cty, size =year, color=class)) + labs(
  x="Displacement", y = "City", size = "Year", title = "Hamid Suha, Kenn Son, Vivian Truong"
) + ylim(c(0,40)) + xlim(c(0,10))



ggplot(data=mpg)+geom_bar(mapping=aes(x=class), color = "blue")
