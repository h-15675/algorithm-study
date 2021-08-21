seq(1, 70, by=2)   num[1:35] (1,3,5,7,9.....68,70)

varA1 <- c(1, 2, 3, 4, 5)
varA2 <- c(1:5)
varA3 <- seq(1, 5)
varA4 <- seq(1, 5, by = 1)

varA1+1
varA1+varA2

str1 <- 'a'
str2 <- 'test'
str3 <- 'Hello world'
str4 <- c("a", "test", "Hello world" )
str5 <- c(str1, str2, str3)
paste(str4, collapse = ",")
paste(str4, collapse = " ")
str5_paste <- paste(str4, collapse = " ")