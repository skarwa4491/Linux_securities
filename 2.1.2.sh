#!/bin/bash

dpkg -s openbsd-inetd >/dev/null 2>&1
flag=`echo $?`

if [ $flag -eq 1 ];
then
	exit 0

else
	exit 1
fi


