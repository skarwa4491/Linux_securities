#!/bin/bash

msg=`stat /etc/crontab | grep 'Access: (0600/-rw-------)'`

y="Access: (0600/-rw-------)  Uid: (    0/    root)   Gid: (    0/    root)"

if [[ $msg == $y ]];
then
	echo "exit"
    exit 0
else
    exit 1
fi
