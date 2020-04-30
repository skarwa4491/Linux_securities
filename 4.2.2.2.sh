#!/bin/bash


status=`grep -e Compress /etc/systemd/journald.conf`

if [ $status == "#Compress=yes" ]
then
	exit 0
else
	exit 1
fi

