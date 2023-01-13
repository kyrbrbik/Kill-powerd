# restart-powerd

Small script that checks if __nvidia-powerd__ starts using 100% CPU and restarts it. It runs as a cron job every minute.

## Installation

Download the script into `/root` directory

Add a crontab entry for the `root` user

`sudo crontab -e`

`* * * * * /root/kill_powerd.sh`

## Cron expression

- The script will run every minute.
- [https://crontab.guru/#*_*_*_*_*](https://crontab.guru/#*_*_*_*_*)
- It does not help much to run the script more often than that.

## CPU percentage

- On some PCs nvidia-powerd can use only 4% CPU and fans can go crazy.
- You can adjust this setting in the `kill_powerd.sh` script, replace the `80` with the desired value.
