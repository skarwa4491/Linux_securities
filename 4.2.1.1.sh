#!/bin/bash

status=`dpkg -s rsyslog | awk 'NR==2{print $2,$3,$4}'`

if [[ $status == "install ok installed" ]];
then
	exit 0
else
	exit 1
fi
