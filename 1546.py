N=int(input())
A=list(map(int,input().split()))
B=0
A.sort()
for i in range(N):
    A[i]=A[i]/A[N-1]*100
    B=B+A[i]
print(round(B/N,6))