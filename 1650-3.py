def solve(n):
    hansu = 0
    if n < 100 :
        hansu = n
        return(hansu)
    else:
        for i in range(100,(n+1)):
            hun = i//100
            ten = (i%100)//10
            one = i%10
            if(hun-ten)==(ten-one):
                hansu += 1
        return(99+hansu)

n = int(input())
result = solve(n)
print(result)