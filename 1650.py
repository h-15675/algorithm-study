def solve(n):
    hansu = 0
    if n < 100 :
        hansu = n
    else:
        hansu = 99
        for i in range(100,(n+1)):
            if int(str(i)[0]) -int(str(i)[1]) == int(str(i)[1]) - int(str(i)[2]):
                hansu += 1
    return(hansu)

n = int(input())
result = solve(n)
print(result)