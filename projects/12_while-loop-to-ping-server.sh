#! /bin/bash

#this is for ping server using while loop

while read server
do 
	ping -c 1 $server
	ping -c 2 $server
	ping -c 3 $server
done < server.txt
