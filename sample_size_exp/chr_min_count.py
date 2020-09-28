with open("../mins/mins_31_15_uniq") as f:
    for line in f:
        ld = line.strip().split()
        print(ld[0], len(ld)-1)