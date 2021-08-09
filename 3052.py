A=[]
for i in range(10):
    N=int(input())
    A.append(N%42)
B=set(A)
print(len(B))