#!/bin/sh

if ps | grep "[s]endStatusHigh";
then
	echo 'running'
else
	/usr/sbin/sendStatusHigh &
fi
if ps | grep "[s]endStatusMediu";
then
        echo 'running'
else
        /usr/sbin/sendStatusMedium &
fi
if ps | grep "[s]endStatusLow";
then
        echo 'running'
else
        /usr/sbin/sendStatusLow &
fi

