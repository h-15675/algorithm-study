df <- data.frame(sex = c("M","F", NA, "M", "F"), 
        score = c(5, 4, 3, 4, NA)) #반드시 따옴표 없이 대문자로 NA
is.na(df)
table(is.na(df))
table(is.na(df$sex))
table(is.na(df$score))
library(dplyr)
df %>% filter(is.na(score))
df %>% filter(!is.na(score)) #score 결측치 제거
df_nomiss <- df %>% filter(!is.na(score))
mean(df_nomiss$score)
sum(df_nomiss$score)
df_nomiss <- df %>% filter(!is.na(score) & ! is.na(sex)) #score, sex 결측치 제거 (1)
df_nomiss2 <- na.omit(df) #하나라도 결측치가 있다면 지워라 (2)
mean(df$score, na.rm = T) #결측치를 제외하고 평균 산출
sum(df$score, na.rm = T) # 결측치를 제외하고 합계 산출
exam <- read.csv("csv_exam.csv")
exam[c(3, 8, 15), "math"] <- NA #3,8,15행의 math에 NA를 할당
exam %>% summarise(mean_math = mean(math)) #math 평균산출
exam %>% summarise(mean_math = mean(math, na.rm = T)) #math 결측치를 제외하고 평균 산출
exam %>% summarise(mean_math = mean(math, na.rm = T),
                   sum_math = sum(math, na.rm = T),
                   median_math = median(math, na.rm = T)) 
mean(exam$math, na.rm = T) #결측치 제외하고 math 평균 산출
exam$math <- ifelse(is.na(exam$math), 55, exam$math) #결측치(NA)이면 55를 넣고 아닌 것은 원래 있는 값을 그대로 넣겠다. 
table(is.na(exam$math))
exam
mean(exam$math)