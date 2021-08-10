N=int(input())
A=list(map(int,input().split()))
B=[]
A.sort()
for i in range(N):
    A[i]=A[i]/A[N-1]*100
    B.append(A[i])
print(round(sum(B)/len(B),6))