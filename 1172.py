S= list(map(int,input().split()))
A = S[0]
B = S[1]
C = S[2]
X = 0
while True:
    X+=1
    if A+(B*X) < (C*X):
        print(X)
        break
    if C <= B:
        print(-1)
        break