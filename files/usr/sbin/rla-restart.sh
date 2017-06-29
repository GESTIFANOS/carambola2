#!/bin/sh
# Start/stop the tracker service
# Save this file as /usr/sbin/tc-monitor.sh
# install this script as root with crontab -e

text='killed at: '
d=$(date)
fm=$(cat /proc/meminfo | grep MemFree)
echo "${text}${d} ${fm}" >> /tmp/restart-log

/usr/bin/killall rla-bin 

sleep 1

/usr/sbin/rla-monitor.sh &

sleep 1
