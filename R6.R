#조건문 
#1. 입력된 숫자가 양수이든 음수이든 양수로 출력하기
f_plus <- function(x) {
  if (x < 0){
    return(-x)
  }
  else {
    return(x)
  }
}
f_plus(-3)

#2. 입력된 숫자가 양수이면 제곱으로 만들어서 출력하고 숫자가 0보다 작거나 같으면 0으로 만들어서 결과를 출력하기
mf1 <- function(x) {
  if (x > 0){return(x^2)}
  else {return(0)}
}
mf1(2)
mf1(-1)
mf1(0)

#3. 입력된 숫자가 0보다 크면 2배의 값을 출력하고 0일 경우 0을 출력하고 0보다 작을 경우 - 2 배의 값을 출력하는 문장을 만드세요.
mf2 <- function(x) {
  if (x > 0) {
    return(x*2)
  }
  else if (x == 0) {
    return(0)
  }
  else if (x < 0){
    return(x*-2)
  }
}
mf2(2)
mf2(0)
mf2(-3)

#4. ifelse(a,b,c) : a 가 참이면 b 를 출력하고 거짓이면 c 를 출력합니다.
no <- 4
no <- scan()
ifelse(no%%2 == 0, "짝수", "홀수")

#연습문제 1. 입력되는 인수가 5보다 클 때는 1을 출력하고 5 보다 작거나 같으면 무조건 0을 출력하는 myf1( ) 을 생성하세요.
myf1 <- function(x) {
  if (x > 5){
    return(1)
  }
  else {
    return(0)
  }
}
myf1 (5)
myf1 (6)

#연습문제 2. 입력되는 인수가 양수일 때는 1을 출력하고 0 또는 음수일 때는 늘 0 을 출력하는 myf2( ) 를 생성하세요.
myf2 <- function(x) {
  if (x > 0){
    return(1)
  }
  else {
    return(0)
  }
}
myf2 (5)
myf2 (0)
myf2 (-5)