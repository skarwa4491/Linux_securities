#!/bin/bash

rm ./temp.txt
cp ./template.txt ./temp.txt


flag="true"
bash 1.3.1.sh
msg=(`echo $?`)
bash 1.3.2.sh
msg+=(`echo $?`)
bash 1.3.3.sh
msg+=(`echo $?`)

for number in ${msg[@]}
do
	if [  $number -eq 1 ];
	then
		flag="false"
		break
	fi
done

if [ $flag == "true" ];
then
	echo -e "1.3"'\t'"Configure-Sudo"'\t''\t'"Compliant" >> ./temp.txt
else
	echo -e "1.3"'\t'"Configure-Sudo"'\t''\t'"Non-compliant" >> ./temp.txt
fi

unset msg

bash 2.1.1.sh
msg=(`echo $?`)
bash 2.1.2.sh
msg+=(`echo $?`)

for number in ${msg[@]}
do
	if [ $number -eq 1 ]
	then
		flag="false"
		break
	else:
		flag="true"
	fi
done

if [ $flag == "false" ]
then
	echo -e "2.1"'\t'"Inetd Services"'\t''\t'"Non-compliant" >> ./temp.txt
else
	echo -e "2.1"'\t'"Inetd Services"'\t''\t'"Compliant" >> ./temp.txt
fi

unset msg

bash 2.3.1.sh
msg+=(`echo $?`)
bash 2.3.2.sh
msg+=(`echo $?`)
bash 2.3.3.sh
msg+=(`echo $?`)
bash 2.3.4.sh
msg+=(`echo $?`)
bash 2.3.5.sh
msg+=(`echo $?`)

for number in ${msg[@]}
do
	if [ $number -eq 1 ]
	then
		flag="false"
		break
	else:
		flag="true"
	fi
done

if [ $flag == "false" ]
then
	echo -e "2.3"'\t'"Services Clients"'\t'"Non-compliant" >> ./temp.txt
else
	echo -e "2.3"'\t'"Services Clients"'\t'"Compliant" >> ./temp.txt
fi



unset msg

bash 3.1.1.sh
msg=(`echo $?`)
bash 3.1.2.sh
msg+=(`echo $?`)

for number in ${msg[@]}
do
	if [ $number -eq 1 ]
	then
		flag="false"
		break
	else:
		flag="true"
	fi
done

if [ $flag == "false" ]
then
	echo -e "3.1"'\t'"Unused N/W's disable"'\t'"Non-compliant" >> ./temp.txt
else
	echo -e "3.1"'\t'"Unused N/W's disable"'\t'"Compliant" >> ./temp.txt
fi

unset msg

bash 3.2.1.sh
msg+=(`echo $?`)
bash 3.2.2.sh
msg+=(`echo $?`)

for number in ${msg[@]}
do
	if [ $number -eq 1 ]
	then
		flag="false"
	else
		flag="true"
	fi
done

if [ $flag == "true" ]
then
	echo -e "3.2"'\t'"N/w-Param(Host)"'\t''\t'"Compliant" >> ./temp.txt
else
	echo -e "3.2"'\t'"N/w-Param(Host)"'\t''\t'"Non-compliant" >> ./temp.txt
fi

unset msg

bash 4.2.1.1.sh
msg+=(`echo $?`)
bash 4.2.1.2.sh
msg+=(`echo $?`)
bash 4.2.1.3.sh
msg+=(`echo $?`)

for number in ${msg[@]}
do
	if [ $number -eq 1 ]
	then
		flag="false"
		break
	else:
		flag="true"
	fi
done

if [ $flag == "false" ]
then
	echo -e "4.2.1"'\t'"COnfigure rsyslog"'\t'"Non-compliant" >> ./temp.txt
else
	echo -e "4.2.1"'\t'"Configure rsyslog"'\t'"Compliant" >> ./temp.txt
fi

unset msg
bash 4.2.2.1.sh
msg+=(`echo $?`)
bash 4.2.2.2.sh
msg+=(`echo $?`)
bash 4.2.2.3.sh
msg+=(`echo $?`)

for number in ${msg[@]}
do
	if [ $number -eq 0 ]
	then
		flag="true"
	else
		flag="false"
	fi
done

if [ $flag == "true" ]
then
	echo -e "4.2.2"'\t'"Configure journald"'\t'"Compliant" >> ./temp.txt
else
	echo -e "4.2.2"'\t'"Configure journald"'\t'"Non-compliant" >> ./temp.txt
fi


unset msg

bash 5.1.1.sh
msg=(`echo $?`)
bash 5.1.2.sh
msg+=(`echo $?`)
bash 5.1.3.sh
msg+=(`echo $?`)
bash 5.1.4.sh
msg+=(`echo $?`)
bash 5.1.5.sh
msg+=(`echo $?`)
bash 5.1.6.sh
msg+=(`echo $?`)
bash 5.1.7.sh
msg+=(`echo $?`)

for number in ${msg[@]}
do
	if [ $number -eq 1 ]
	then
		flag="false"
	else
		flag="true"
	fi
done

if [[ $falg == "true" ]]
then
	echo -e "5.1"'\t'"Configure cron"'\t''\t'"Compliant" >> ./temp.txt
else
	echo -e "5.1"'\t'"Configure cron "'\t''\t'"Non-compliant" >> ./temp.txt
fi

unset msg

bash 6.1.2.sh
msg+=(`echo $?`)
bash 6.1.3.sh
msg+=(`echo $?`)

for number in ${msg[@]}
do
	if [ $number -eq 1 ]
	then
		flag="false"
	else
		flag="true"
	fi
done

if [[ $flag == "true" ]]
then
	echo -e "6.1"'\t'"Systm file permissions"'\t'"Compliant" >> ./temp.txt
else
	echo -e "6.1"'\t'"Systm file permissions"'\t'"Non-compliant" >> ./temp.txt
fi

echo "" >> ./temp.txt
echo "" >> ./temp.txt
total_reco=9
nc_count=`cat temp.txt | grep -i non-compliant | wc -l`
c_count=$(expr $total_reco - $nc_count)
bash cis_1.sh $c_count $nc_count
cat ./temp.txt





