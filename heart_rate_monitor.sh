#!/usr/bin/env bash
#monitoring heart rate per second

echo -e "enter a device name:\c"
read device_name
log_file="heart_rate_log.txt"

random_heart_rate()
{
	echo "$(( RANDOM %40 + 60 ))"
}

while true; do
       echo "process ID:$$"
       timestamp=$(date +"%Y-%m-%d %H:%M:%S")
       heart_rate=$(random_heart_rate)
echo "$timestamp $device_name $heart_rate" >> $log_file
sleep 1
done


