A,B,C = map(int, input().split())
print(-1 if C <= B else A//(C-B)+1)