#!/bin/bash


message="$(grep -Ei '^\s*Defaults\s+([^#]+,\s*)?use_pty(,\s+\S+\s*)*(\s+#.*)?$' /etc/sudoers /etc/sudoers.d/*)"

if [ -z "$message" ]
then
	exit 1
else
	exit 0
fi

