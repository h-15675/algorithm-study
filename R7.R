#연습문제 3. 두 숫자를 입력해서 첫 번째 숫자가 두 번째 숫자보다 클 경우 첫 번째 숫자에서 두 번째 숫자를 뺀 값을 출력하고 두번째 숫자가 첫번째 숫자보다 크거나 같을 경우 두번째 숫자에서 첫번째 숫자를 뺀 값을 출력하는 함수 myf3( ) 을 작성하세요
myf3 <- function(x, y) {
  if (x > y) {
    return (x - y)
  }
  else {
    return (y - x)
  }
}
myf3 (4,1)
myf3 (1,3)

myf3_1 <- function(x, y) {
  if (x >y) {
    z <- x-y
  }
  else {
    z <- y-x
  }
  return(z)
}

#연습문제 4. 입력값이 0보다 작을 경우 0으로 출력하고 0보다 같거나 크고 5보다 작은 값일 경우 1 을 출력하고 5 이상의 값이 입력될 경우 10을 출력하는 함수 myf4( ) 를 생성하세요.
myf4 <- function(x) {
  if (x < 0){
    return (0)
  }
  else if (x < 5){
    return (1)
  }
  else {
    return (10)
  }
}
myf4(-3)
myf4(2.5)
myf4(15)


myf4_1 <- function(x) {
  if (x < 0){
    z <- 0 
  }
  else if (x < 5){
    z <- 1
  }
  else {
    z <- 10
  }
  return(z)
}

#연습문제 5. 입력값이 ＇Y’나 소문자‘y’면 화면에‘Yes’를 출력하고 그 외 다른 글자를 입력하면‘Not Yes’를 출력하는 사용자 정의 함수를 만드세요.(함수명과 변수명은 자유롭게~)
myf5 <- function(x){
  if (x == "Y" || x == "y"){
    return ('Yes')
  }
  else {
    return ('Not Yes')
  }
    
}
myf5("y")
myf5("Y")
myf5(3)

myf5_1 <- function(x){
  if (x == "Y"){
    return ('Yes')
  }
  else if (x == "y"){
    return ('Yes')
  }
  else {
    return ('Not Yes')
  }
  
}

myf5_1 <- function(x){
  if (x == "Y"){
    z <-"Yes"
  }
  else if (x == "y"){
    z <-"Yes"
  }
  else {
    z <-'Not Yes'
  }
  return(z)
}