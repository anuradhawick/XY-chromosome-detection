import sys

sets = {}
sets_new = {}

with open(sys.argv[1]) as f:
    for line in f:
        ls = line.strip().split()
        sets[ls[0]] = set(ls[1::])
        sets_new[ls[0]] = set(ls[1::])
        
keys = list(sets.keys())

for k1 in keys:
    for k2 in keys:
        if k1 == k2:
            continue

        sets_new[k1] = sets_new[k1] - sets[k2]

with open(sys.argv[2], "w+") as f:
    for k, v in sets_new.items():
        f.write(k)
        f.write("\t")

        for kmer in v:
            f.write(kmer)
            f.write("\t")
        f.write("\n")