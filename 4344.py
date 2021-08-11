C=int(input())
for i in range(C):
    Sum=0
    stu=0
    A= list(map(int,input().split()))
    for j in range(A[0]):
        Sum=Sum+A[j+1]
    for k in range(A[0]):
        if A[k+1] > Sum/A[0]:
            stu=stu+1
    print(f'{"%0.3f" % (stu/A[0]*100)}%')