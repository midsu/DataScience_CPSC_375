library(tidyverse)
band_members
band_instruments2
band_members %>% inner_join(band_instruments2)
band_members %>% inner_join(band_instruments2, by=c(name="artist"))
band_members %>% inner_join(band_instruments)
band_members
band_instruments2
band_members %>% inner_join(band_instruments2, by=c(name="artist", band="plays"))
band_members %>% inner_join(band_instruments2)
band_members_4rows
band_instruments
band_members_4rows %>% semi_join(band_instruments)
band_members_4rows %>% anti_join(band_instruments)
mean(c(10,20,30,NA))
mean(c(10,20,30,NA), na.rm = TRUE)
mpg
# calculate the max cyl(inders) of all cars
top(1, cyl)
mpg %>% top_n(1, cyl)
mpg %>% top_n(1, -cyl)
mpg %>% summarise(max(cyl))
# calculate the max cyl(inders) of all cars made by Honda
mpg %>% filter(manufacturer=="honda")
mpg %>% filter(manufacturer=="honda") %>% summarise(max(cyl))
# calculate the max cyl(inders) of all cars made by Honda or Toyota
mpg %>%filter(manufacturer == "honda" | manufacturer == "toyota") %>% summarise(max(cyl))
# calculate the max and min cyl(inders) of all cars made by Honda or Toyota
mpg %>%filter(manufacturer == "honda" | manufacturer == "toyota") %>% summarise(max(cyl), min(cyl))
# calculate the max cyl(inders) of all cars made by every manufacturer
mpg %>%group_by(manufacturer) %>% summarise(max(cyl))
# calculate the max and min cyl(inders) of all cars made by every manufacturer
mpg %>%group_by(manufacturer) %>% summarise(max(cyl), min(cyl))
mydata <- mpg %>%group_by(manufacturer) %>% summarise(max(cyl), min(cyl))
view(mydata)
mydata <- mpg %>%group_by(manufacturer) %>% summarise(maxCyl=max(cyl), minCyl=min(cyl))
mpg %>%group_by(manufacturer) %>% summarise(maxCyl=max(cyl), minCyl=min(cyl))
# calculate the max and min cyl(inders) of all cars made by every manufacturer in every year
mpg %>%group_by(manufacturer, year) %>% summarise(max(cyl), min(cyl))
