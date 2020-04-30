#!/bin/bash

files=("/var/log/auth.log" "/var/log/syslog" "/var/log/kern.log")
flag="true"
for path in ${files[@]}
do
	if [ -e $path ]
	then
		flag="true"
	else
		flag="false"
	fi
done

if [ $flag == "true" ]
then
	exit 0
else
	exit 1
fi
