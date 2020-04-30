#!/bin/bash

dpkg -s nis >/dev/null 2>&1

x=`echo $?`

if [ $x -eq 1 ];
then
   exit 0
else 
   exit 1
fi

