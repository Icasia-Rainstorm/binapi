#! /bin/bash
# Run the program for 1 hour, then change another file to record.
SYMBOL="BTCUSDT"
for ((i = 0; i <= 1; i++))
do
    TIME=$(date "+%m-%d-%H:%M:%S")
	timeout 10s ./binapi yCPC1ACscs1lSqLvPd5bs8yaNBAjdVUkgHCE0iMlcjnXKZ0ewvsFZcmhw1QM7XIX 94Io8NUB5cRyfjJqoSunS3obaUqHTOSo44qbr2TCpZ0LNiVRulMf5aI4KACEb7Nv $SYMBOL \
        > result/${SYMBOL}_${TIME}.h5
done