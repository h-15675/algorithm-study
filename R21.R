#혼자서해보기
ggplot(data = economics, aes(x = date, y = psavert)) + geom_line()

ggplot(data = mpg, aes(x = drv, y = hwy)) + geom_boxplot()

#혼자서해보기
df3 <- mpg %>% filter(class %in% c("suv", "compact", "subcompact"))
ggplot(data = df3 , aes(x = class, y = cty)) + geom_boxplot()