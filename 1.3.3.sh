#!/bin/bash
file_check="$(grep -Ei '^\s*Defaults\s+logfile=\S+' /etc/sudoers /etc/sudoers.d/*)"
file_path=${file_check:30}
path=${file_path:1:17}

if [[ -e $path ]]
then

	exit 0
else

	exit 1
fi




