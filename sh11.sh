#!/bin/bash
#Program:
#	You input your demobilization date,I calculate how many days before you demobilize.

echo "This program will try to calculate:"
echo "How many days before your demobilization date..."
read -p "Please input your demobilization date (YYYYMMDD ex>20170101):" date2

date_d=$(echo $date2 | grep '[0-9]\{8\}')
if [ "$date_d" == "" ];then
	echo "You input the wrong date formate..."
	exit 1
fi

declare -i date_dem='date --date="$date2"+%s'
declare -i date_now='date +%s'
declare -i date_total_s=$(($date_dem-$date_now))
declare -i date_d=$(($date_total_s/60/60/24))

if [ "$date_total_s" -lt "O" ];then
	echo "You had been demobilization before: " $((-1*$date_d)) "ago"
else
	declare -i date_h=$(($(($date_total_s-$date_d*60*60*24))/60/60))
	echo "You will demobilize after $date_d days andy $date_h hours."
fi
