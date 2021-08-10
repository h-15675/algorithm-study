for i in range(int(input())):
    A =input()
    score = 0
    sumscore = 0
    for j in A :
        if j == "O" :
            score +=1
            sumscore = sumscore+score
        else:
            score =0
    print(sumscore)