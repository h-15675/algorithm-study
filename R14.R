#혼자서 해보기
mpg %>% filter(manufacturer == "audi") %>% arrange(desc(hwy)) %>% head(5)
exam %>%mutate(total = math + english + science,
mean = (math + english + science)/3) %>% head
exam %>%mutate(test = ifelse(science >= 60, "pass", "fail")) %>% head
exam %>%mutate(total = math + english + science) %>% arrange(total) %>% head

#혼자서 해보기, '한 구문으로 처리하라'
df_mpg1 <- as.data.frame(ggplot2::mpg)
df_mpg1 <- df_mpg1 %>% mutate(total = cty + hwy)
df_mpg1 <- df_mpg1 %>% mutate(mean = (total)/2)
df_mpg1 %>% arrange(desc(mean)) %>% head(3)
df_mpg1 %>% mutate(total = cty + hwy, mean = (total)/2) %>% arrange(desc(mean)) %>% head(3)

exam %>% summarise(mean_math = mean(math))
exam %>% group_by(class) %>% summarise(mean_math = mean(math))
exam %>% group_by(class) %>% summarise(mean_math = mean(math), sum_math = sum(math),
median_math = median(math), 
n = n())
mpg %>% group_by(manufacturer, drv) %>% summarise(mean_cty = mean(cty)) %>%  head(10)
mpg %>%  group_by(manufacturer) %>% filter(class == "suv") %>% mutate(total = (cty+hwy)/2) %>% summarise(mean_total = mean(total)) %>% arrange(desc(mean_total)) %>% 