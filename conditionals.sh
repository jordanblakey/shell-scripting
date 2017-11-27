#!/bin/bash

str1=""
str2="Sad"
str3="Happy"

# CONDITIONALS
if [ "$str1" ]; then
  echo "$str1 is not null"
fi

if [ -z "$str1" ]; then
  echo "str1 has no value"
fi

if [ "$str2" == "$str3" ]; then
  echo "$str2 equals $str3"
elif [ "$str2" != "$str3" ]; then
  echo "$str2 is not equal to $str3"
fi

if [ "$str2" > "$str3" ]; then
  echo "$str2 is greater than $str3"
elif [ "$str2" < "$str3" ]; then
  echo "$str2 is less than $str3"
fi

# CONDITIONALS WITH SHELL INPUT
num11=5
num12=6
sum=$(getSum num1 num2)
echo "The sum is $sum"

read -p "What is your name? " name
echo "Hello $name"

read -p "How old are you? " age
if [ $age -ge 16 ]
then
  echo "You can drive"
elif [ $age -eq 15 ]
then
  echo "You can drive next year"
else
  echo "You can't drive"
fi

read -p "Enter a number : " num

echo "num = $num"

if ((num == 10)); then
  echo "Your number equals 10"
fi

if ((num > 10)); then
  echo "It is greater than 10"
else
  echo "It is less than 10"
fi

if (( ((num % 2)) == 0)); then
  echo "It is even"
fi

# LOGICAL OPERATORS
if (( ((num > 0)) && ((num < 11)) ));
then
  echo "$num is between 1 and 10"
fi

[ -d samp_dir ] || mkdir samp_dir
touch samp_dir/samp_file && samp_dir/vim samp_file

