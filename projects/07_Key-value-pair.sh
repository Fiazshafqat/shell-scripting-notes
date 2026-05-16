#!/bin/bash
#How to set and arra key value pair

#Declare an arrau
declare -A myArray
#Initialize an array
myArray=([name]=Fiaz [age]=35 [City]=Kiel)

echo "Name is ${myArray[name]}"
echo "Age is ${myArray[age]}"
echo "City is ${myArray[City]}"
