#!/bin/bash

msg=`stat /etc/gshadow- | grep 'Access: (0640/-rw-r-----)'`

y="Access: (0640/-rw-r-----)  Uid: (    0/    root)   Gid: (    0/    root)"

if [[ $msg == $y ]];
then
    exit 0
else
    exit 1
fi



