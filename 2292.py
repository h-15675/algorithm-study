A =int(input())
Num = 1 #1부터 시작하는 벌집 속 숫자
cnt = 1 #지나가야 하는 방의 최소 개수
while A > Num: #입력값이 벌집 속 숫자보다 작을 때까지 반복
    Num+=6*cnt #벌집 속 숫자는 6의 배수만큼 증가
    cnt+=1 #방의 개수에 1씩을 추가
print(cnt) #cnt를 출력