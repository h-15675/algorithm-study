#1. 세 과목의 점수를 입력받고, 그 세과목의 평균 점수가 80점 이상이면 '우수', 60점 이상이면 '통과', 그리고 두 조건 모두 만족하지 않으면(60점 미만) '낙제'라고 출력되는 함수 작성
myf1 <- function(a, b, c){
  z <- (a + b + c) / 3;
  ifelse(z>=80, "우수",
         ifelse(z>=60, "통과", "낙제")
         )
}
myf1 (80, 90, 30)

myf1_1 <- function(a, b, c){
  z <- mean( c(a , b, c))
  if(z>=80){
    "우수"}
    else if(z>=60){
      "통과"}
      else{
        "낙제"
      }
}

#2. 두 정수 a, b를 입력받아 a와 b 사이의 모든 정수의 합을 구하는 함수를 작성하시오.
myf2 <- function(a, b){
  if (abs(a-b) <= 1){
    z <- 0
  }
  else if (a < b){
    z <- 0 
    for (i in 1:(b-a-1)){
      z <- z + a + i
      }
  }
  else {
    z <- 0 
    for (i in 1:(a-b-1)){
      z <- z + b + i 
    }
  }
  return(z)
}
myf2(3, 7)
myf2(3, 7)
myf2(3, 3)
myf2(2, 3)

myf2_1 <- function(a, b){
  if (a-b >= -1 && a-b <= 1){
    z <- 0
  }
  else if (a < b){
    z <- 0 
    for (i in (a+1):(b-1)){
      z <- z + i
    }
  }
  else {
    z <- 0 
    for (i in (b+1):(a-1)){
      z <- z + i 
    }
  }
  return(z)
}