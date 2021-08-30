total = input().split()
num1= total[0]
num1= (int(num1[2])*100)+(int(num1[1])*10)+int(num1[0])
num2= total[1]
num2= (int(num2[2])*100)+(int(num2[1])*10)+int(num2[0])
if num2 > num1:
    print(num2)
if num1 > num2:
    print(num1)