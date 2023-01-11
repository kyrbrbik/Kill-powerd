#!/bin/bash
top -b -w 512 -n 1 > /tmp/top.temp
usage=$(grep nvidia-powerd /tmp/top.temp | awk '{print $9}')
rm /tmp/top.temp
usage_rounded=$(printf %.0f $usage)
if [[ "$usage_rounded" -gt "80" ]] 
then
	systemctl restart nvidia-powerd.service
	#Uncomment the next line if you want to log the restarts
	#echo "$(date +%F-%R) powerd was restarted" >> /root/powerd.log
fi
