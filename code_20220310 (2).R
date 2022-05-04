library(tidyverse)
library(modelr)
mod <- lm(formula = Petal.Length ~ Petal.Width + Species, data = iris)
summary(mod)
ggplot(data=iris)+geom_point(aes(x=Petal.Width, y=Petal.Length))
iris <- iris %>% add_predictions(mod) %>% view()
ggplot(data=iris)+geom_point(aes(x=Petal.Width, y=Petal.Length, color=Species)) + geom_line(mapping = aes(x=Petal.Width, y=pred, color=Species))

# nonlinear transforms
autompg <- read_csv("autompg.csv")
autompg <- autompg %>% mutate (displ2 = 1/displacement^2)
mod2 <-lm(data=autompg, mpg~displ2)
autompg <- autompg %>% add_predictions(mod2)
ggplot(data=autompg)+geom_point(aes(x=displacement, y=mpg)) + geom_line(mapping = aes(x=displacement, y=pred), color="red")
