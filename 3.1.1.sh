#!/bin/bash

grep "^\s*linux" /boot/grub/grub.cfg |grep -v "ipv6.disable=1"
flag=`echo $?`

if [ $flag -eq 1 ];
then
	
	exit 0
else
	exit 1
fi

