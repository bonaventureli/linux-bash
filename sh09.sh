#!/bin/bash
#Program
#	Check $1 is equal to "hello"

if [ "$1" == "hello" ];then
	echo "Hello,how are you?"
elif [ "$1" == "" ];then
	echo "You MUST input parameters,ex> {i$0 someword}"
else
	echo "The only parameter is 'hello',ex> {$0 hello}"
fi
