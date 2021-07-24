A,B,C =input().split()
2 <= int(A),int(B),int(C) <= 10000
print((int(A)+int(B))%int(C))
print(((int(A)%int(C))+(int(B)%int(C)))%int(C))
print((int(A)*int(B))%int(C))
print(((int(A)%int(C))*(int(B)%int(C)))%int(C))