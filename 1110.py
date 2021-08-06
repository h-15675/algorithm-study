A=B= int(input())
N= 0
while True :
    ten = A // 10
    one = A%10
    total = ten +one
    N = N+1
    A =int(A%10)*10+ int(total%10)
    if (B == A) :
        break
print(N)