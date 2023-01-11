Small script that checks if nvidia-powerd starts using 100% CPU and restarts it.
Runs as a cronjob every minute.

Installation
put the full script location into roots crontab
sudo crontab -e 
* * * * * /root/kill_powerd.sh

