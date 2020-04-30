#!/bin/bash

dpkg -s sudo >/dev/null 2>&1

flag=`echo $?`

if [ $flag -ne 0 ]
then
	dpkg -s sudo-ldap
	flag=`echo $?`
	if [ $flag -ne 0 ]
	then
		exit 1
	fi
fi
 


