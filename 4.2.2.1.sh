#!/bin/bash

status=`grep -e ForwardToSyslog /etc/systemd/journald.conf`


if [[ $status == "#ForwardToSyslog=yes" ]]
then
	exit 0
else
	exit 1
fi
