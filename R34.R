install.packages("wordcloud")
library(wordcloud)
library(RColorBrewer)
display.brewer.all()
display.brewer.pal(8, "Dark2")
pal <- brewer.pal(8,"Dark2") #dark2 색상목록에서 8개 색상 추출
pal
set.seed(1234) #난수 고정
wordcloud(words = df_word$word, freq = df_word$freq, min.freq = 2, max.words = 200, random.order = F, rot.per = .1, scale = c(4, 0.3), colors = pal)
pal <- brewer.pal(9,"Blues")[5:9]
set.seed(1234)
wordcloud(words = df_word$word, freq = df_word$freq, min.freq = 2, max.words = 200, random.order = F, rot.per = .1, scale = c(4, 0.3), colors = pal)
twitter <- read.csv("twitter.csv", header = T, stringsAsFactors = F, fileEncoding = "UTF-8")
twitter <- rename(twitter,
                  no = 번호,
                  id = 계정이름,
                  date = 작성일,
                  tw = 내용)
twitter$tw <- str_replace_all(twitter$tw, "\\W", " ")
head(twitter$tw)
nouns <- extractNoun(twitter$tw)
wordcount <- table(unlist(nouns))