def solve(n):
    hansu = 0
    if len(str(n)) < 3 :
        hansu = n
        return(hansu)
    else:
        for i in range(100,(n+1)):
            if int(str(i)[0]) -int(str(i)[1]) == int(str(i)[1]) - int(str(i)[2]):
                hansu += 1
        return(99+hansu)

n = int(input())
result = solve(n)
print(result)