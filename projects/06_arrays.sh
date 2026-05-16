#!/bin/bash
#This scripts show how to define and get values in arrays

#Define an array
myArray=( 10 20 10.5 Fiaz "Lahore Punjab Pakistan")

#Get values from array

#Get All values in an array
echo "All Values in the arrays are ${myArray[*]}"

#To get value of a specific index
echo "Value in the 3rd index is ${myArray[3]}"

#To get the length of no.of values of an array

echo "The length of an array, values in an array is ${#myArray[*]}"

# To get the range of values

echo "The index value2-3 is ${myArray[*]:2:3}"

# Add new values in an array or update an array
myArray+=(New 40 50 Germany)
echo "The new values of an array are ${myArray[*]}"
