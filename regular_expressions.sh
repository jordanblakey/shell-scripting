#!/bin/bash

# INPUT VALIDATION
read -p "Validate Date : " date

pat="^[0-9]{8}$"

if [[ $date =~ $pat ]]; then
  echo "$date is valid"
else
  echo "$date not valid"
fi


# READ INPUT
read -p "Enter 2 Numbers to Sum : " num1 num2

sum=$((num1+num2))

echo "$num1 + $num2 = $sum"


# VALIDATE CODE
read =sp "Enter the secret code" secret

if [ "$secret" == "password" ]; then
  echo "Enter"
else
  echo "Wrong Password"
fi


OIFS="$IFS" # Store the default internal field separator
IFS="," # Set a new internal field separator

read -p "Enter 2 numbers to add separated by a comma" num1 num2

num1=${num1//[[:blank:]]/}
num2=${num2//[[:blank:]]/}

sum = $((num1+num2))

echo "$num1 += $num2 = $sum"

IFS="$OIFS"


name="Derek"
echo "${name}'s toy"

samp_string="The dog climbed the tree"
echo "${samp_string//dog/cat}"

echo "I am ${name:=Kat}"
