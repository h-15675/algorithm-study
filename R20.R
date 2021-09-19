#혼자서해보기
mpg <- as.data.frame(ggplot2::mpg)
df <- mpg %>% 
  filter(class == "suv") %>% 
  group_by(manufacturer) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  arrange(desc(mean_cty)) %>% 
  head(5)
ggplot(data = df, aes(x = reorder(manufacturer, -mean_cty), y = mean_cty)) + geom_col()

ggplot(data = mpg, aes(x = class)) + geom_bar()
+ df2 <- mpg %>%
  group_by(class) %>% 
  summarise(count = n()) 
ggplot(data = df2, aes(x = class, y = count)) + geom_col()

ggplot(data = economics, aes(x = date, y = unemploy)) + geom_line()