#!/bin/bash
#PBS -P ch35
#PBS -q biodev
#PBS -l ncpus=5
#PBS -l mem=400GB
#PBS -l jobfs=1GB
#PBS -l walltime=200:00:00
#PBS -l wd
##PBS -l other=hyperthread
#PBS -l storage=scratch/ch35+gdata/ch35

# ./countmin 15 7 mins/mins_15_7 &

# ./countmin 17 7 mins/mins_17_7 &
# ./countmin 17 9 mins/mins_17_9 &



# ./countmin 19 9 mins/mins_19_9 &
# ./countmin 19 7 mins/mins_19_7 &


# wait;


# ./countmin 19 11 mins/mins_19_11 &



# ./countmin 21 9 mins/mins_21_9 &
# ./countmin 21 7 mins/mins_21_7 &
# ./countmin 21 11 mins/mins_21_11 &



# ./countmin 23 11 mins/mins_23_11 &


# wait;

# ./countmin 23 13 mins/mins_23_13 &
# ./countmin 23 15 mins/mins_23_15 &




# ./countmin 25 13 mins/mins_25_13 &
# ./countmin 25 15 mins/mins_25_15 &

# ./countmin 27 11 mins/mins_27_11 &


# wait;


# ./countmin 27 13 mins/mins_27_13 &


# wait;

# ./countmin 29 11 mins/mins_29_11 &
# ./countmin 29 13 mins/mins_29_13 &
# ./countmin 29 15 mins/mins_29_15 &

# ./countmin 31 11 mins/mins_31_11 &
# ./countmin 31 13 mins/mins_31_13 &


# wait;

# ./countmin 31 15 mins/mins_31_15 &

# ./countmin 33 11 mins/mins_33_11 &
# ./countmin 33 13 mins/mins_33_13 &
# ./countmin 33 15 mins/mins_33_15 &
# ./countmin 33 17 mins/mins_33_17 &


# wait;

# ./countmin 35 11 mins/mins_35_11 &
# ./countmin 35 13 mins/mins_35_13 &
# ./countmin 35 15 mins/mins_35_15 &
# ./countmin 35 17 mins/mins_35_17 &

# wait;


./countmin 29 17 mins/mins_29_17 &
./countmin 29 19 mins/mins_29_19 &
./countmin 29 21 mins/mins_29_21 &
./countmin 29 23 mins/mins_29_23 &

wait;

./countmin 31 17 mins/mins_31_17 &
./countmin 31 19 mins/mins_31_19 &
./countmin 31 21 mins/mins_31_21 &
./countmin 31 23 mins/mins_31_23 &
./countmin 31 25 mins/mins_31_25 &

wait;

./countmin 33 19 mins/mins_33_19 &
./countmin 33 21 mins/mins_33_21 &
./countmin 33 23 mins/mins_33_23 &
./countmin 33 25 mins/mins_33_25 &
./countmin 33 27 mins/mins_33_27 &


wait;

./countmin 35 19 mins/mins_35_19 &
./countmin 35 21 mins/mins_35_21 &
./countmin 35 23 mins/mins_35_23 &
./countmin 35 25 mins/mins_35_25 &
./countmin 35 27 mins/mins_35_27 &

wait;

qsub obtain_unique_minimizers.sh