#!/bin/bash

nmcli radio all >output.txt

if [ `awk 'NR==1 {print $1}' <output.txt` == "WIFI-HW" -a `awk 'NR==2 {print $1}' <output.txt` == "enabled" ];
then
	if [ `awk 'NR==1 {print $2}' <output.txt` == "WIFI" -a `awk 'NR==2 {print $2}' <output.txt` == "disabled" ];
	then
		if [ `awk 'NR==1 {print $3}' <output.txt` == "WWAN-HW" -a `awk 'NR==2 {print $3}' <output.txt` == "disabled" ];
                 then
                         if [ `awk 'NR==1 {print $4}' <output.txt` -a "WWAN" -a `awk 'NR==2 {print $4}' <output.txt` == "disabled" ];
                         then
                                 exit 0
                         else
                                 exit 1
                         fi

		else
			exit 1
		fi
	else
		exit 1
	fi
else

	exit 1
fi
