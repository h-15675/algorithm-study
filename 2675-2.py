for i in range(int(input())):
    R,S=input().split()
    R=int(R)
    S=str(S)
    for y in range(len(S)):
        print(R*S[y],end='')
    print()