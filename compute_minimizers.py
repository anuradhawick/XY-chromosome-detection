import numpy as np
import os
import sys
import re
import argparse
import glob
from tqdm import tqdm

parser = argparse.ArgumentParser(description='Compute unique minimizers for each chromosome.')

parser.add_argument('--chrompath',
                    metavar='<PATH>',
                    help="Chromosome directory",
                    type=str,
                    required=True)
parser.add_argument('--o',
                    metavar='<OUT PATH>',
                    help="Output directory",
                    type=str,
                    required=True)


args = parser.parse_args()

chrompath = args.chrompath
output = args.o

if not os.path.exists(output):
    os.makedirs(output)

# w - window size
# k - kmer size
def obtainMinimizers(k, m, seq):
    Kmer = k
    M = m
    L = len(seq)
    mins = []

    print(L)
    rev = seq[::-1]
    rev = rev.replace("A", "=")
    rev = rev.replace("T", "A")
    rev = rev.replace("=", "T")
    rev = rev.replace("C", "=")
    rev = rev.replace("G", "C")
    rev = rev.replace("=", "G")

    print("here")

    for i in tqdm(range(0, L - Kmer + 1)):
        sub_f = seq[i:i + Kmer]
        
        if "N" in sub_f:
            continue
        
        sub_r = rev[L - Kmer - i:L - i]

        minimizer = "Z" * Kmer * 2
        for j in range(0, Kmer - M + 1):
            sub2 = sub_f[j:j + M]
            if sub2 < minimizer:
                minimizer = sub2
            sub2 = sub_r[j:j + M]
            if sub2 < minimizer:
                minimizer = sub2

        mins.append(minimizer)
    return set(mins)

def getSeqs(path):
    seqs = []
    with open(path) as f:
        data = f.read().strip().split("\n")
        i = 1
        seq = ""

        for line in data:
            # a = 12
            if line[0] == ">":
                if  len(seq) > 0:
                    seqs.append(seq)
                seq = ""
            else:
                seq += line.strip()
        if len(seq) > 0:
            seqs.append(seq)                
    return seqs


out = open(output + "/minimizers_per_chrom", "w+")
for f in glob.glob(chrompath + "/*.fa"):
    seqs = getSeqs("/media/anuradhawick/data/Datasets/Human Ref/chrfasta/chr21.fa")
    for seq in seqs:
        mins = obtainMinimizers(31, 15, seq)
        out.write(str(mins))
        out.write("\n")
        break
    break
out.close()