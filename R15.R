#혼자서 해보기
mpg %>%  group_by(class) %>% summarise(mean_cty = mean(cty))
mpg %>%  group_by(class) %>% summarise(mean_cty = mean(cty)) %>% arrange(desc(mean_cty))
mpg %>%  group_by(class) %>% summarise(mean_hwy = mean(hwy)) %>% arrange(desc(mean_hwy)) %>% head(3)
mpg %>% 
  group_by(manufacturer) %>% 
  filter(class == "compact") %>%
  summarise(count = n()) %>% 
  arrange(desc(count)) 

test1 <- data.frame(id = c(1,2,3,4,5),
                    midterm = c(60,80,70,90,85))
test2 <- data.frame(id = c(1,2,3,4,5),
                    final = c(70,83,65,95,80))
total <- left_join(test1, test2, by = "id")
name <- data.frame(class = c(1,2,3,4,5),
        teacher = c("kim", "lee", "park", "choi", "jung"))
exam_new <- left_join(exam, name , by = "class")
group_a <- data.frame(id = c(1,2,3,4,5),
                      test = c(60,80,70,90,85))
group_b <- data.frame(id = c(1,2,3,4,5),
                      test = c(70,83,65,95,80))
group_all <- bind_rows(group_a,group_b)

#분석정리
midwest <- as.data.frame(ggplot2::midwest)
midwest <- midwest %>% mutate(ratio_child = (poptotal-popadults)/poptotal*100)
midwest %>% arrange(desc(ratio_child)) %>% select (county, ratio_child) %>% head(5)    
midwest <- matate(grede = ifelse(ratio_child >= 40, "large",
                   ifelse(ratio_child >= 30, "middle", "small"))
+ table(midwest$grade)
+ midwest %>% group_by(grade) %>% summarise(count = n()) 
midwest %>% mutate(ratio_asian = (popasian/poptotal)*100) %>%arrange(ratio_asian)%>%select(state, county, ratio_asian) %>% head(10)