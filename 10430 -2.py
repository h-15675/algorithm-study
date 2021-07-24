A,B,C =input().split()
A =int(A)
B =int(B)
C =int(C)
2 <= A,B,C <= 10000
print((A+B)%C, ((A%C)+(B%C))%C, (A*B)%C, ((A%C)*(B%C))%C,sep= '\n')