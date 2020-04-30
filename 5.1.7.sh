#!/bin/bash

msg=`stat /etc/cron.d | grep 'Access: (0700/drwx------)'`

y="Access: (0700/drwx------)  Uid: (    0/    root)   Gid: (    0/    root)"

if [[ $msg == $y ]];
then 
    exit 0
else
    exit 1
fi


