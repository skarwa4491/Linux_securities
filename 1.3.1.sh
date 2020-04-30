#!/bin/bash


dpkg -s sudo >/dev/null 2>&1

flag=`echo $?`


dpkg -s sudo-ldap >/dev/null 2>&1

flag_2=`echo $?`


if [ $flag -eq 0 -o $flag_2 -eq 0 ]
then
	exit 0
fi

exit 1




