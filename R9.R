#연습문제 1. 정수 n 을 입력 받은 후 1 부터 n 까지의 합을 출력하는 함수를 작성하시오.(변수 2개 사용)
#(1) While문 사용해서 작성
f1 <- function(x){
  i <- 1
  u <- 0
  while (i <= x){
    u = u + i
    i = i + 1
  }
  return(u)
}
f1(5)
f1(10)

#(2) For 문 사용해서 작성
f1 <- function(x){
  u <- 0 
  for(i in 1:x){
    u = u + i
  }
  return(u)
}
f1(5)
f1(10)

#연습문제 2. 1부터 n까지의 합이 1000이 넘지 않을 때까지, 1 부터 n 까지의 합을 출력하라. (n은 1씩 증가, 변수 2개 사용, while 사용)
n <- 1
z <- 0
while(z < 1000){
  z = z + n
  n = n + 1
  print(z)
}

n <- 1
z <- 0
while(z < 1000){
  print(z)
  z = z + n
  n = n + 1
}

#.연습문제 3. 구구단을 오른쪽과 같이 출력하여라. ( paste() 사용 )
for (i in 1:9){
  for (j in 1:9){
    print(paste(i,"*",j,"=",i*j))
  }
}

#.연습문제 4. 두 개의 숫자를 입력 받은 후 두 값이 모두 양수일 경우 두 수의 곱을 출력하고 두 값 중 하나라도 0이나 음수일 경우는 두 수의 합을 출력하세요. 
f4 <- function(x,y){
  if(x>0 && y>0){
    z <- x*y
  }
  else{
    z <- x+y
  }
  return(z)
}
f4(3,5)
f4(-2,3)

#연습문제 5. 함수에 'Y’나 소문자‘y’를 입력하면 화면에‘Yes’를 출력하고 그 외 다른 글자를 입력하면‘Not Yes’를 출력하는 사용자 정의 함수를 만드세요. 
(1) or 연산자 사용 X
f5 <- function (x) {
  if (x == "Y" ) z <- "Yes"
  else if ( x == "y") z <- "Yes"
  else z <- "Not Yes"
  return (z)
}
f5("y")
f5("Y")
f5(y)  
f5("z")

#(2) or 연산자 사용
f5 <- function(x){
  if(x=="Y" || x=="y" ){
    z <- "Yes"}
  else{
    z <- "Not Yes"}
  return(z)
  }
f5("y")
f5("Y")
f5(1)