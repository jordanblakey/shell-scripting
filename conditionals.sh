#!/bin/bash

str1=""
str2="Sad"
str3="Happy"

# CONDITIONALS
if [ "$str1" ]; then # check for existence.
  echo "$str1 is not null"
fi

if [ -z "$str1" ]; then # check if empty.
  echo "str1 has no value"
fi

if [ "$str2" == "$str3" ]; then # check for equality
  echo "$str2 equals $str3"
elif [ "$str2" != "$str3" ]; then
  echo "$str2 is not equal to $str3" # check for inequality
fi

if [ "$str2" > "$str3" ]; then # check a greater than b
  echo "$str2 is greater than $str3"
elif [ "$str2" < "$str3" ]; then # check a less than b
  echo "$str2 is less than $str3"
fi # end if statement

# CONDITIONALS WITH SHELL INPUT
num11=5 # assignment
num12=6
sum=$(getSum num1 num2) # assign the return value of a function to a variable
echo "The sum is $sum" # print a varaible

read -p "What is your name? " name # Get terminal input and store it in $name
echo "Hello $name"

read -p "How old are you? " age
if [ $age -ge 16 ] # if greater than
then # Think curly brackets
  echo "You can drive"
elif [ $age -eq 15 ] # if equal
then
  echo "You can drive next year"
else
  echo "You can't drive"
fi # end if statement

read -p "Enter a number : " num # Get term input and store it in num

echo "num = $num"

if ((num == 10)); then # alternative conditional syntax
  echo "Your number equals 10"
fi

if ((num > 10)); then # alt conditional syntax
  echo "It is greater than 10"
else
  echo "It is less than 10"
fi

if (( ((num % 2)) == 0)); then # alt conditional syntax
  echo "It is even"
fi

# LOGICAL OPERATORS
if (( ((num > 0)) && ((num < 11)) ));
then
  echo "$num is between 1 and 10"
fi

[ -d samp_dir ] || mkdir samp_dir # ethier dir exists, or create it.
touch samp_dir/samp_file && samp_dir/vim samp_file 

