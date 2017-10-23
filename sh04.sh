#!/bin/bash
#Program:
#	User inputs 2 integer numbers;program will cross these two numbers.
#History

echo -e "You SHOULD input 2 numbers, Iwill cross them!\n"
read -p "first number: "firstname
read -p "second number: "second
total=$(($firstname *$second))
echo -e "\nThe result of $firstname x $second is ==> $total"
