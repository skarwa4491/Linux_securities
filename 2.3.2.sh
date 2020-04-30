#!/bin/bash

dpkg -s rsh-client >/dev/null 2>&1
y=`echo $?`

if [ $y -eq 1 ];
then 
    exit 0
else 
    exit 1
fi




