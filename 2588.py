A,B,C = map(int, input())
D,E,F = map(int, input())
a=((A*100)+(B*10)+C)*F
b=((A*100)+(B*10)+C)*E
c=((A*100)+(B*10)+C)*D
d=a+(b*10)+(c*100)
print(a,b,c,d, sep="\n")