#혼자서해보기
ggplot(data = mpg, aes(x = cty, y = hwy)) + geom_point()

ggplot(data = midwest, aes(x = poptotal, y = popasian)) + geom_point() + xlim(0, 500000) + ylim(0,10000)

options(scipen = 99) #1e+05 = 10만(1 × 10의 5승) 정수 표현
options(scipen = 0) #1e+05 = 10만(1 × 10의 5승) 지수 표현

library(dplyr)
df_mpg <- mpg %>% group_by(drv) %>% summarise(mean_hwy = mean(hwy))
ggplot(data = df_mpg, aes(x = drv, y = mean_hwy)) + geom_col()

ggplot(data = df_mpg, aes(x = reorder(drv, -mean_hwy), y = mean_hwy)) + geom_col() 

#평균 막대 그래프 : 데이터를 요약한 평균표를 먼저 만든 후 평균표를 이용해 그래프 생성 
ggplot(data =mpg, aes(x = drv)) + geom_bar()
#빈도 막대 그래프 : 별도로 표를 만들지 않고 원자료를 이용해 바로 그래프 생성 
ggplot(data =mpg, aes(x = hwy)) + geom_bar()