for i in range(int(input())):
    total=list(input().split())
    R=int(total[0])
    S=list(total[1])
    for y in range(len(S)):
        print(R*S[y],end='')
    print(end='\n')