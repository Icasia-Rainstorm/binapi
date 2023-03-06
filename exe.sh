#! /bin/bash
# Run the program for 1 hour, then change another file to record.
for ((i = 0; i <= 1; i++))
do
	timeout 1m ./binapi yCPC1ACscs1lSqLvPd5bs8yaNBAjdVUkgHCE0iMlcjnXKZ0ewvsFZcmhw1QM7XIX 94Io8NUB5cRyfjJqoSunS3obaUqHTOSo44qbr2TCpZ0LNiVRulMf5aI4KACEb7Nv BNBUSDT > result/$(date "+%Y-%m-%d_%H:%M:%S").txt
done



