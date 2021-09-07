N= int(input())
for i in range(N):
    S=input()
    for j in range(len(S)-1):
        if S[j] != S[j+1] and S[j] in S[j+1:]:
            N -=1
            break
<<<<<<< HEAD
print(N)
=======
print(N) 
>>>>>>> cd8cc6c9a431f62333bb76b6d7fa16e67efea732
