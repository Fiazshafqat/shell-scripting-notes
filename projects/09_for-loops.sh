#!/bin/bash

#This is for loops script

for ((num==1; num<=5; num++))
do
if [ -d "demo$num" ]
    then
        echo "Error: demo$num already exists"
        exit 1
else

	mkdir demo$num

    echo "Created Demo $num successfully "
    
fi
done

