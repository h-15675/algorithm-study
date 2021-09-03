A = ['c=','c-','dz=','d-','lj', 'nj', 's=', 'z=']
S = input()
cnt =0
for i in A:
    S = S.replace(i,'^')
print(len(S))