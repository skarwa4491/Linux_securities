#!/bin/bash


status=`grep -e Storage /etc/systemd/journald.conf`

if [ $status == "#Storage=persistent" ]
then
	exit 0
else
	exit 1
fi
