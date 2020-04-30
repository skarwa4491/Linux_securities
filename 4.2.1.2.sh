#!/bin/bash

status=`systemctl is-enabled rsyslog`

if [ $status == "enabled" ]
then
	exit 0
else
	exit 1
fi
