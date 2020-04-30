#!/bin/bash

param_1=`sysctl net.ipv4.conf.all.send_redirects | awk 'NR==1 {print $1}'`
value_1=`sysctl net.ipv4.conf.all.send_redirects | awk 'NR==1 {print $3}'`
param_2=`sysctl net.ipv4.conf.default.send_redirects | awk 'NR==1 {print $1}'`
value_2=`sysctl net.ipv4.conf.default.send_redirects | awk 'NR==1 {print $3}'`

if [ $param_1 == "net.ipv4.conf.all.send_redirects" -a $value_1 -eq 0 ]
then
	if [ $param_2 == "net.ipv4.conf.default.send_redirects" -a $value_2 -eq 0 ]
	then
		exit 0
	else
		exit 1
	fi
else
	exit 1
fi


