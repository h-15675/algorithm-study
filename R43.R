mpg <- as.data.frame(ggplot2::mpg)
library(dplyr)
mpg2 <- mpg %>%
  select(class, cty) %>%
  filter(class %in% c("compact", "suv", "midsize"))
head(mpg2)
table(mpg2$class)
aov(data = mpg2, cty ~ class)
summary(aov(cty ~ class, data = mpg2))