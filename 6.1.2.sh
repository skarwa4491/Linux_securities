#!/bin/bash

msg=`stat /etc/passwd | grep 'Access: (0644/-rw-r--r--)'`

y="Access: (0644/-rw-r--r--)  Uid: (    0/    root)   Gid: (    0/    root)"

if [[ $msg == $y ]];
then 
    exit 0
else
    exit 1
fi


