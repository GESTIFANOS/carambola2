#!/bin/sh

if ps | grep "[r]la-cli --cycle";
then
	echo 'running'
else
	/usr/bin/rla-cli --cycle 90 4 50 20
fi
