#!/bin/bash

systemctl is-enabled cron >/dev/null 2>&1

y=`echo $?`

if [ $y -eq 0 ];
then 
    exit 0
else 
    exit 1
fi
