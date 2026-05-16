#! /bin/bash

# This is while loop

num=0
while [[ $num -le 5 ]]
do
	echo "The number is :$num"
	num=$((num +1))
done
