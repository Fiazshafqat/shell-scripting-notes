#!/bin/bash

#This script is for if else condition

read -p "Enter your Age:" age
read -p "Enter Your Province:" province
if [[ $age -ge 18 ]];
then 
	echo ****************"You are eligible for Pak CNIC****************"
elif [[ $province == Punjab ]];
then 
	echo "***************You are also eligible for Pak CNIC***********"
else

	echo "*********You are not eligible for PAK CNIC, Your are under age***********"

fi
