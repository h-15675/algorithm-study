A,B,C =map(int, input().split())
2 <= A,B,C <= 10000
print((A+B)%C,((A%C)+(B%C))%C,(A*B)%C,((A%C)*(B%C))%C, sep="\n")