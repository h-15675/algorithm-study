#엑셀 파일을 불러와서 데이터 프레임 형태로 저장하시오.
install.packages("readxl")
library(readxl)
df_score <- read_excel("stat_score.xlsx")

#6가지 함수를 이용하여 데이터를 파악하시오.
head(df_score)
tail(df_score)
View(df_score)
dim(df_score)
str(df_score)
summary(df_score)

#hw을 homework로 변수명을 수정하시오.
colnames(df_score)[4] = "homework" 
names(df_score)[4] = "homework" 
fix(df_score)

#총점 파생 변수를 만드시오. ( 총점은 중간고사 30%, 기말고사 40%, 과제 20%, 출석 10% 의 비율로 산정됨.)
df_score$total <- (df_score$mid_exam * 0.3) + (df_score$final_exam * 0.4) + (df_score$homework * 0.2) + (df_score$att * 0.1) 

#총점의 각 사분위수를 기준으로 A,B,C,D 평점을 부여하고 파생 변수를 만드시오. (F는 없음)
df_score$grade <- ifelse(df_score$total >= 75, "A",
                         ifelse(df_score$total >= 50, "B",
                                ifelse(df_score$total >= 25, "C" , "D")))

#A, B, C, D 각 학점의 빈도표와 빈도 막대 그래프를 만들어 확인하시오.
table(df_score$grade)
qplot(df_score$grade)

#파생 변수를 포함한 새로운 데이터 프레임을 (score_new.xlsx), score_new.csv,  score_new.rda 파일로 각각 저장하시오.
write.csv(df_score, file = "df_score.csv")
save(df_score, file = "df_score.rda")