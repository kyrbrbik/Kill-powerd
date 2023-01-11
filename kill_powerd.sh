#!/bin/bash
usage=$(echo "$(top -b -w 512 -n 1)" | grep nvidia-powerd | awk '{print $9}')
usage_rounded=$(printf %.0f $usage)
if [[ "$usage_rounded" -gt "80" ]] 
then
	systemctl restart nvidia-powerd.service
	#Uncomment the next line if you want to log the restarts
	#echo "$(date +%F-%R) powerd was restarted" >> /var/log/powerd.log
fi
