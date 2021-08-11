for i in range(int(input())):
    A= list(map(int,input().split()))
    avg = (sum(A)-A[0])/A[0]
    stu = 0
    for j in A[1:]:
        if j > avg:
            stu +=1
    print(f'{"%0.3f" % (stu/A[0]*100)}%')