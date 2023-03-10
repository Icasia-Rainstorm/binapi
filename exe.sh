#! /bin/bash
# Run the program for 1 hour, then change another file to record.
WD=`pwd`
REGEX="[A-Z]*USDT_[a-zA-Z]*$"
DIR="result"
HOURNUM=5
for (( i = 0; i <= $HOURNUM-1; i++ ))
do
    TIME=$(date "+%m-%d-%H:%M:%S")
    echo $TIME
	timeout 2s $WD/binapi yCPC1ACscs1lSqLvPd5bs8yaNBAjdVUkgHCE0iMlcjnXKZ0ewvsFZcmhw1QM7XIX 94Io8NUB5cRyfjJqoSunS3obaUqHTOSo44qbr2TCpZ0LNiVRulMf5aI4KACEb7Nv >> $WD/info.txt
done