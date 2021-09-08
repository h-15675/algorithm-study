#3. 두 개의 주사위를 던졌을 때, 눈의 합이 6이 되는 모든 경우의 수를 출력하시오.
for (a in 1:6){
  for (b in 1:6){
    if (a+b==6) {
      z <- c (a, b)
      print (z)
    }
  }
}

#4. 하나의 양수a를 입력받아 1부터 a까지 홀수들의 합과 짝수들의 합을 출력하는 함수를 구하시오.
myf4 <- function(a){
  x <- 0
  y <- 0
  i <- 1
  j <- 2
  while (i <= a){
    x = x + i
    i = i + 2
  }
  while (j <= a){
    y = y + j
    j = j + 2
  }
  k <- paste("홀수의 합은",x,"짝수의 합은", y)
  return(k)
}
myf4 (10)
myf4 (7)

myf4_1 <- function(a){
  x <- 0
  y <- 0
  for (i in 1:a){
    if(i%%2 == 1){
      x = x + i}
    else{
      y = y + i}
  }
  return(paste("홀수의 합은",x,"짝수의 합은",y))
}

#5. 1부터 100까지의 자연수 중에서 3의 배수이면서 5의 배수인 숫자를 출력하시오.
for (i in 1:100){
  if( i%%3 == 0 && i%%5 == 0){
    print(i)
  }
}

x <- 1
while(x <= 100){
  if(x %% 3 == 0 && x %% 5 == 0)
  print(x)
  x = x + 1
}

x <- 0
while(x <= 100){
  x = x + 1
  if(x %% 3 != 0) next  
  if(x %% 5 != 0) next
  print(x)
}