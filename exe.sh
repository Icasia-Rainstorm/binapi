#! /bin/bash
# Run the program for 1 hour, then change another file to record.
for ((i = 0; i <= 0; i++))
do
    TIME=$(date "+%m-%d-%H:%M:%S")
	timeout 2s ./binapi yCPC1ACscs1lSqLvPd5bs8yaNBAjdVUkgHCE0iMlcjnXKZ0ewvsFZcmhw1QM7XIX 94Io8NUB5cRyfjJqoSunS3obaUqHTOSo44qbr2TCpZ0LNiVRulMf5aI4KACEb7Nv

    # Rename files into the format: {symbol}_{operation}_{start_time}.h5
    if [ $i -eq 0 ];
    then 
        cd result
    fi
    
    REGEX="[A-Z]*USDT_[a-z]*"
    for file in *
    do  
        if [[ $file =~ $REGEX ]];
        then
            mv $file "$file"_"$TIME".h5
        fi
    done
done