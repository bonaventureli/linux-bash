#!/bin/bash
#Program:
#	This script only accepts the flowing parameter:one,two or three.

echo "This program will print your selection!"
#read -p "Input your choice:" choice
#case $choice in
case $1 in
	"one")
		echo "Your choice is ONE"
		;;
	"two")
		echo "Your chocie is TWO"
		;;
	"three")
		echo "Your choice is THREE"
		;;
	*)
		echo "Usage $0 {one|two|three}"
		;;
esac
