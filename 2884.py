H,M=map(int,input().split())
if 0<= H<25 and 45<= M <60:
    print(H,M-45)
elif H== 0 and M <45:
    print(H+23,15+M)
elif 0<= H<25 and M<45:
    print(H-1,15+M)