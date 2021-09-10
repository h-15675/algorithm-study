library(dplyr)
exam <- read.csv("csv_exam.csv")
#ctrl + shift + m -> %>% 
exam %>% filter(class == 1)
exam %>% filter(class != 1)
exam %>% filter(math > 50)
exam %>% filter(english >= 80)
exam %>% filter(class == 1 & math >= 50)
exam %>% filter(math >= 90 | english >= 90)
exam %>% filter(math >= 90 | english >= 90)

#시험 출제
exam %>% filter(class == 1 | class == 3 | class == 5)
exam %>% filter(class %in% c(1, 3, 5))

class1 <- exam %>% filter(class == 1)
mean(class1$math)
class2 <- exam %>% filter(class == 2)
mean(class2$math)

#혼자서 해보기
install.packages("ggplot2")
mpg <- as.data.frame(ggplot2::mpg)
A1 <- mpg %>% filter(displ <= 4)
mean(A1$hwy)
A2 <- mpg %>% filter(displ >= 5)
mean(A2$hwy)

B1 <- mpg %>% filter(manufacturer == 'audi')
mean(B1$cty)
B2 <- mpg %>% filter(manufacturer == 'toyota')
mean(B2$cty)
C1 <- mpg %>% filter(manufacturer %in% c("chevrilet", "ford", "honda"))
mean(C1$hwy)

exam %>% select(math)
exam %>% select(class, math, english)
exam %>% select(-math)
exam %>% filter(class == 1) %>% select(english)
exam %>% select(id, math) %>% head
exam %>% select(id, math) %>% head(10)

#혼자서 해보기
D1 <- mpg %>% select(class, cty)
head(D1)
F1 <- mpg %>% filter(class == "suv")
mean(F1$cty)
F2 <- mpg %>% filter(class == "compact")
mean(F2$cty)

exam %>%  arrange(math) #오름차순
exam %>%  arrange(desc(math)) #내림차순
exam %>%  arrange(class, math)