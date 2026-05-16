#!/bin/bash

#This is for loops script to create 100 folder
#$1 name of folder
#$2 start of eange
#$3end of range

for ((num=$2; num<=$3; num++))
do
	mkdir $1$num
done
