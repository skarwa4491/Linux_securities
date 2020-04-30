#!/bin/bash

param_1=`sysctl net.ipv4.ip_forward | awk 'NR==1 {print $1}'`
value_1=`sysctl net.ipv4.ip_forward | awk 'NR==1 {print $3}'`
grep -E -s "^\s*net\.ipv4\.ip_forward\s*=\s*1" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /run/sysctl.d/*.conf
flag=`echo $?`

if [ $param_1 == "net.ipv4.ip_forward" -a $value_1 -eq 0 -a $flag -ne 0 ]
then
	exit 0
else
	exit 1
fi
