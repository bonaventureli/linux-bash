#!/bin/bash
#Program:
#	Usage loop to calculate "1+2+3+....+100" result.
s=0
i=0
while [ "$i" != "100" ]
do
	i=$(($i+1))
	s=$(($s+$i))
done
echo "The result of '1+2+3+...+100' is ==> $s"