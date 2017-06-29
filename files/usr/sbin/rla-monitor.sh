#!/bin/sh

if ps | grep "[r]la-bin";
then
	echo 'running'
else
	text='restarted at: '
	d=$(date)
	fm=$(cat /proc/meminfo | grep MemFree)
	echo "${text}${d} ${fm}" >> /tmp/restart-log

	/etc/init.d/rla restart
fi
