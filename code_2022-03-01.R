library(tidyverse)
relig_income
relig_income %>% view()
relig_income %>% pivot_longer(-religion, names_to= "income", values_to= "freq")
relig_income %>% pivot_longer(-religion, names_to= "income", values_to= "freq") %>% view()
relig_income %>% view()
table4a
table4a %>% pivot_longer(-country, names_to = "year", values_to = "freq")
table4a %>% pivot_longer(2:3, names_to = "year", values_to = "freq")
table4a %>% pivot_longer(c(`1999`, `2000`), names_to = "year", values_to = "freq")

grades <- tibble(CWID=c(1234567, 2356902, 5005667), NAME=c("Mary", "Lee", "Elena"), CPSC120=c(3,4,NA), CPSC121=c(3.3,3,2), CPSC131=c(3,4,3.7), MATH338=c(3,NA,3.3))
grades
grades %>% pivot_longer(-c(CWID, NAME), names_to = "classes", values_to = "GPA", values_drop_na = TRUE)
grades %>% pivot_longer(3:6, names_to = "Classes", values_to = "GPA", values_drop_na = TRUE) %>% view()

table2
table2 %>% pivot_wider(names_from = type, values_from = count) %>% view()

table3
table3 %>% separate(rate, into = c("cases", "population")) %>% view()
?separate
table3 %>% separate(rate, into = c("cases", "population"), sep=" ") %>% view()
billboard %>% view()
