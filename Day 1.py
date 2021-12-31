N = input()
a = 10
if len(N) >= 2:
    for i in range(len(N)-1):
        if N[i] == N[i+1]:
            a+=5
        if N[i] != N[i+1]:
            a+=10
print(a)