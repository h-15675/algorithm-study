N=int(input())
A=list(map(int,input().split()))
result=[]

for i in range(N):
    result.append(A[i]/max(A)*100)

print(round(sum(result)/len(result),6))