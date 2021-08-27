#사용자 정의 함수
#기본적인 사용자 정의 함수 생성하기
# 입력 값 없는 경우
myfunct1 <- function( ) {
               return(10)
  }
myfunct1
function() {
             return(10)
}
 myfunct1( )
[1] 10

#함수에 입력되는 값(인자)이 있는 경우
#입력되는 값의 제곱 구하기
f1 <- function(a){
  b <- a^2
  return(b)
}
f1(3)

#입력되는 두 값을 곱하기
f2 <- function(a,b){
  c <- a*b
  return(c)
}
f2(2,3)

#연습문제 1. 두 수를 입력받아서 첫번째 수에서 두번째 수를 뺀 결과를 출력하는 함수 
myf1 <- function(a,b){
  c <- a-b
  return(c)
}
myf1(5,2)

#연습문제 2. 반지름을 입력받아 원의 넓이를 출력하는 함수
myf2 <- function(a){
  b<-(a^2)*pi
  return(b)
}
myf2(4)

#연습문제 3. 벡터를 입력받아 평균을 구하는 함수(= mean)
myf3 <- function(a,b){
  var <- c(a:b)
  sum_var <- sum(var)
  length_var <- length(var)
  mean_var <- (sum_var/length_var)
  return(mean_var)
}
myf3(1,3)

myf3 <- function(a){
  b <- sum(a)
  c <- length(a)
  z <- b/c
  return(z)
}
myf3(c(1:3))

#연습문제 4. 두 수를 입력받아 몫과 나머지를 출력하는 함수
myf4 <- function(a,b){
  x = a%/%b
  y = a%%b
  z1 = c(x,y)
  z2 = c("몫은", x, "나머지는", y)
  return(z2)
}
myf4 (6,3)