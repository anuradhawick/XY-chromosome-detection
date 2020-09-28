#!/bin/bash
#PBS -P ch35
#PBS -q biodev
#PBS -l ncpus=16
#PBS -l mem=400GB
#PBS -l jobfs=1GB
#PBS -l walltime=200:00:00
#PBS -l wd
#PBS -l other=hyperthread
#PBS -l storage=scratch/ch35+gdata/ch35

# MALE

# ./assign  ./mins/mins_15_7_uniq 32 1000000  15 7 ./truths/male.fastq > ./results/male_15_7_results
# ./assign  ./mins/mins_17_7_uniq 32 1000000  17 7 ./truths/male.fastq > ./results/male_17_7_results
# ./assign  ./mins/mins_17_9_uniq 32 1000000  17 9 ./truths/male.fastq > ./results/male_17_9_results
# ./assign  ./mins/mins_19_9_uniq 32 1000000  19 9 ./truths/male.fastq > ./results/male_19_9_results
# ./assign  ./mins/mins_19_7_uniq 32 1000000  19 7 ./truths/male.fastq > ./results/male_19_7_results
# ./assign  ./mins/mins_19_11_uniq 32 1000000 19 11 ./truths/male.fastq > ./results/male_19_11_results
# ./assign  ./mins/mins_21_9_uniq 32 1000000  21 9 ./truths/male.fastq > ./results/male_21_9_results
# ./assign  ./mins/mins_21_7_uniq 32 1000000  21 7 ./truths/male.fastq > ./results/male_21_7_results
# ./assign  ./mins/mins_21_11_uniq 32 1000000 21 11 ./truths/male.fastq > ./results/male_21_11_results
# ./assign  ./mins/mins_23_11_uniq 32 1000000 23 11 ./truths/male.fastq > ./results/male_23_11_results
# ./assign  ./mins/mins_23_13_uniq 32 1000000 23 13 ./truths/male.fastq > ./results/male_23_13_results
# ./assign  ./mins/mins_23_15_uniq 32 1000000 23 15 ./truths/male.fastq > ./results/male_23_15_results
# ./assign  ./mins/mins_25_13_uniq 32 1000000 25 13 ./truths/male.fastq > ./results/male_25_13_results
# ./assign  ./mins/mins_25_15_uniq 32 1000000 25 15 ./truths/male.fastq > ./results/male_25_15_results
# ./assign  ./mins/mins_27_11_uniq 32 1000000 27 11 ./truths/male.fastq > ./results/male_27_11_results
# ./assign  ./mins/mins_27_13_uniq 32 1000000 27 13 ./truths/male.fastq > ./results/male_27_13_results
# ./assign  ./mins/mins_29_11_uniq 32 1000000 29 11 ./truths/male.fastq > ./results/male_29_11_results
# ./assign  ./mins/mins_29_13_uniq 32 1000000 29 13 ./truths/male.fastq > ./results/male_29_13_results
# ./assign  ./mins/mins_29_15_uniq 32 1000000 29 15 ./truths/male.fastq > ./results/male_29_15_results
# ./assign  ./mins/mins_31_11_uniq 32 1000000 31 11 ./truths/male.fastq > ./results/male_31_11_results
# ./assign  ./mins/mins_31_13_uniq 32 1000000 31 13 ./truths/male.fastq > ./results/male_31_13_results
# ./assign  ./mins/mins_31_15_uniq 32 1000000 31 15 ./truths/male.fastq > ./results/male_31_15_results
# ./assign  ./mins/mins_33_11_uniq 32 1000000 33 11 ./truths/male.fastq > ./results/male_33_11_results
# ./assign  ./mins/mins_33_13_uniq 32 1000000 33 13 ./truths/male.fastq > ./results/male_33_13_results
# ./assign  ./mins/mins_33_15_uniq 32 1000000 33 15 ./truths/male.fastq > ./results/male_33_15_results
# ./assign  ./mins/mins_33_17_uniq 32 1000000 33 17 ./truths/male.fastq > ./results/male_33_17_results
# ./assign  ./mins/mins_35_11_uniq 32 1000000 35 11 ./truths/male.fastq > ./results/male_35_11_results
# ./assign  ./mins/mins_35_13_uniq 32 1000000 35 13 ./truths/male.fastq > ./results/male_35_13_results
# ./assign  ./mins/mins_35_15_uniq 32 1000000 35 15 ./truths/male.fastq > ./results/male_35_15_results
# ./assign  ./mins/mins_35_17_uniq 32 1000000 35 17 ./truths/male.fastq > ./results/male_35_17_results

./assign ./mins/mins_29_17_uniq 32 1000000 29 17 ./truths/male.fastq > ./results/male_29_17_results
./assign ./mins/mins_29_19_uniq 32 1000000 29 19 ./truths/male.fastq > ./results/male_29_19_results
./assign ./mins/mins_29_21_uniq 32 1000000 29 21 ./truths/male.fastq > ./results/male_29_21_results
./assign ./mins/mins_29_23_uniq 32 1000000 29 23 ./truths/male.fastq > ./results/male_29_23_results
./assign ./mins/mins_31_17_uniq 32 1000000 31 17 ./truths/male.fastq > ./results/male_31_17_results
./assign ./mins/mins_31_19_uniq 32 1000000 31 19 ./truths/male.fastq > ./results/male_31_19_results
./assign ./mins/mins_31_21_uniq 32 1000000 31 21 ./truths/male.fastq > ./results/male_31_21_results
./assign ./mins/mins_31_23_uniq 32 1000000 31 23 ./truths/male.fastq > ./results/male_31_23_results
./assign ./mins/mins_31_25_uniq 32 1000000 31 25 ./truths/male.fastq > ./results/male_31_25_results
./assign ./mins/mins_33_19_uniq 32 1000000 33 19 ./truths/male.fastq > ./results/male_33_19_results
./assign ./mins/mins_33_21_uniq 32 1000000 33 21 ./truths/male.fastq > ./results/male_33_21_results
./assign ./mins/mins_33_23_uniq 32 1000000 33 23 ./truths/male.fastq > ./results/male_33_23_results
./assign ./mins/mins_33_25_uniq 32 1000000 33 25 ./truths/male.fastq > ./results/male_33_25_results
./assign ./mins/mins_33_27_uniq 32 1000000 33 27 ./truths/male.fastq > ./results/male_33_27_results
./assign ./mins/mins_35_19_uniq 32 1000000 35 19 ./truths/male.fastq > ./results/male_35_19_results
./assign ./mins/mins_35_21_uniq 32 1000000 35 21 ./truths/male.fastq > ./results/male_35_21_results
./assign ./mins/mins_35_23_uniq 32 1000000 35 23 ./truths/male.fastq > ./results/male_35_23_results
./assign ./mins/mins_35_25_uniq 32 1000000 35 25 ./truths/male.fastq > ./results/male_35_25_results
./assign ./mins/mins_35_27_uniq 32 1000000 35 27 ./truths/male.fastq > ./results/male_35_27_results

# FEMALE
# ./assign  ./mins/mins_15_7_uniq 32 1000000  15 7 ./truths/female.fastq > ./results/female_15_7_results
# ./assign  ./mins/mins_17_7_uniq 32 1000000  17 7 ./truths/female.fastq > ./results/female_17_7_results
# ./assign  ./mins/mins_17_9_uniq 32 1000000  17 9 ./truths/female.fastq > ./results/female_17_9_results
# ./assign  ./mins/mins_19_9_uniq 32 1000000  19 9 ./truths/female.fastq > ./results/female_19_9_results
# ./assign  ./mins/mins_19_7_uniq 32 1000000  19 7 ./truths/female.fastq > ./results/female_19_7_results
# ./assign  ./mins/mins_19_11_uniq 32 1000000  19 11 ./truths/female.fastq > ./results/female_19_11_results
# ./assign  ./mins/mins_21_9_uniq 32 1000000  21 9 ./truths/female.fastq > ./results/female_21_9_results
# ./assign  ./mins/mins_21_7_uniq 32 1000000  21 7 ./truths/female.fastq > ./results/female_21_7_results
# ./assign  ./mins/mins_21_11_uniq 32 1000000  21 11 ./truths/female.fastq > ./results/female_21_11_results
# ./assign  ./mins/mins_23_11_uniq 32 1000000  23 11 ./truths/female.fastq > ./results/female_23_11_results
# ./assign  ./mins/mins_23_13_uniq 32 1000000  23 13 ./truths/female.fastq > ./results/female_23_13_results
# ./assign  ./mins/mins_23_15_uniq 32 1000000  23 15 ./truths/female.fastq > ./results/female_23_15_results
# ./assign  ./mins/mins_25_13_uniq 32 1000000  25 13 ./truths/female.fastq > ./results/female_25_13_results
# ./assign  ./mins/mins_25_15_uniq 32 1000000  25 15 ./truths/female.fastq > ./results/female_25_15_results
# ./assign  ./mins/mins_27_11_uniq 32 1000000 27 11 ./truths/female.fastq > ./results/female_27_11_results
# ./assign  ./mins/mins_27_13_uniq 32 1000000  27 13 ./truths/female.fastq > ./results/female_27_13_results
# ./assign  ./mins/mins_29_11_uniq 32 1000000  29 11 ./truths/female.fastq > ./results/female_29_11_results
# ./assign  ./mins/mins_29_13_uniq 32 1000000  29 13 ./truths/female.fastq > ./results/female_29_13_results
# ./assign  ./mins/mins_29_15_uniq 32 1000000  29 15 ./truths/female.fastq > ./results/female_29_15_results
# ./assign  ./mins/mins_31_11_uniq 32 1000000  31 11 ./truths/female.fastq > ./results/female_31_11_results
# ./assign  ./mins/mins_31_13_uniq 32 1000000  31 13 ./truths/female.fastq > ./results/female_31_13_results
# ./assign  ./mins/mins_31_15_uniq 32 1000000  31 15 ./truths/female.fastq > ./results/female_31_15_results
# ./assign  ./mins/mins_33_11_uniq 32 1000000  33 11 ./truths/female.fastq > ./results/female_33_11_results
# ./assign  ./mins/mins_33_13_uniq 32 1000000  33 13 ./truths/female.fastq > ./results/female_33_13_results
# ./assign  ./mins/mins_33_15_uniq 32 1000000  33 15 ./truths/female.fastq > ./results/female_33_15_results
# ./assign  ./mins/mins_33_17_uniq 32 1000000  33 17 ./truths/female.fastq > ./results/female_33_17_results
# ./assign  ./mins/mins_35_11_uniq 32 1000000  35 11 ./truths/female.fastq > ./results/female_35_11_results
# ./assign  ./mins/mins_35_13_uniq 32 1000000  35 13 ./truths/female.fastq > ./results/female_35_13_results
# ./assign  ./mins/mins_35_15_uniq 32 1000000  35 15 ./truths/female.fastq > ./results/female_35_15_results
# ./assign  ./mins/mins_35_17_uniq 32 1000000  35 17 ./truths/female.fastq > ./results/female_35_17_results


./assign ./mins/mins_29_17_uniq 32 1000000 29 17 ./truths/female.fastq > ./results/female_29_17_results
./assign ./mins/mins_29_19_uniq 32 1000000 29 19 ./truths/female.fastq > ./results/female_29_19_results
./assign ./mins/mins_29_21_uniq 32 1000000 29 21 ./truths/female.fastq > ./results/female_29_21_results
./assign ./mins/mins_29_23_uniq 32 1000000 29 23 ./truths/female.fastq > ./results/female_29_23_results
./assign ./mins/mins_31_17_uniq 32 1000000 31 17 ./truths/female.fastq > ./results/female_31_17_results
./assign ./mins/mins_31_19_uniq 32 1000000 31 19 ./truths/female.fastq > ./results/female_31_19_results
./assign ./mins/mins_31_21_uniq 32 1000000 31 21 ./truths/female.fastq > ./results/female_31_21_results
./assign ./mins/mins_31_23_uniq 32 1000000 31 23 ./truths/female.fastq > ./results/female_31_23_results
./assign ./mins/mins_31_25_uniq 32 1000000 31 25 ./truths/female.fastq > ./results/female_31_25_results
./assign ./mins/mins_33_19_uniq 32 1000000 33 19 ./truths/female.fastq > ./results/female_33_19_results
./assign ./mins/mins_33_21_uniq 32 1000000 33 21 ./truths/female.fastq > ./results/female_33_21_results
./assign ./mins/mins_33_23_uniq 32 1000000 33 23 ./truths/female.fastq > ./results/female_33_23_results
./assign ./mins/mins_33_25_uniq 32 1000000 33 25 ./truths/female.fastq > ./results/female_33_25_results
./assign ./mins/mins_33_27_uniq 32 1000000 33 27 ./truths/female.fastq > ./results/female_33_27_results
./assign ./mins/mins_35_19_uniq 32 1000000 35 19 ./truths/female.fastq > ./results/female_35_19_results
./assign ./mins/mins_35_21_uniq 32 1000000 35 21 ./truths/female.fastq > ./results/female_35_21_results
./assign ./mins/mins_35_23_uniq 32 1000000 35 23 ./truths/female.fastq > ./results/female_35_23_results
./assign ./mins/mins_35_25_uniq 32 1000000 35 25 ./truths/female.fastq > ./results/female_35_25_results
./assign ./mins/mins_35_27_uniq 32 1000000 35 27 ./truths/female.fastq > ./results/female_35_27_results

