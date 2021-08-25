S = input().upper()
A = list(set(S))
B = []

for i in A:
    B.append(S.count(i))

if B.count(max(B)) > 1:
    print("?")
else:
    print(A[B.index(max(B))])