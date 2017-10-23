#!/bin/bash
#Program
#	Use ping command to check the network's PC state.
netowrk="192.168.231"
for sitenu in $(seq 120 150)
#seq sequence
do 
	ping -c 1 -w 1 ${network},${sitenu}&> /dev/null &&result=0 || result=1
	if [ "$result" == 0 ];then
		echo "Server ${network},${sitenu} is UP."
	else
		echo "Server ${network},${sitenu} is DOWN."
	fi
done
