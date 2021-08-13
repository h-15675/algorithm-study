n= 1
while True:
    if n<10:
        n+=2
    if 10<n<10000:
        n= n+(n//10)+(n-((n//10)*10))
    elif n>10000:
        break
    print(n)