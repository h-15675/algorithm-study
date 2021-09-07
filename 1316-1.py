N= int(input())
for i in range(N):
    S=input()
    for j in range(len(S)-1):
        if S[j] != S[j+1] and S[j] in S[j+1:]:
            N -=1
            break
print(N)