A = 'c=','c-','dz=','d-','lj', 'nj', 's=', 'z='
S = list(input())
cnt =0
for i in A:
    for j in range(len(S)-1):
        if S[j]+S[j+1] == i:
            cnt = cnt+ 1
            print(S[j]+S[j+1])
for q in range(len(S)-2):
    if S[q]+S[q+1]+S[q+2] == 'dz=':
        print(S[q]+S[q+1]+S[q+2])
        cnt = cnt+ 1
print(len(S)-cnt)