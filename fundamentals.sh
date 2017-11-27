#!/bin/bash

# COMMENTS
# This is a comment.

# PRINT TO TERMINAL
echo "Hello World"

# PERMISSIONS
# 7 Read, Write, Execute
# 6 Read, Write
# 5 Read, Execute
# 4 Read Only
# 3 Write, Execute
# 2 Write Only
# 1 Execute Only

# 777
# ^^^
# ||Everyone's permission
# |This group's permissions
# User's permissions

# VARIBLES
myName="Jordan"
num1=4

# CONSTANTS
declare -r NUM1=5

# ARITHMETIC
num3=$((NUM1 + num2))
num4=$((NUM1 - num2))
num5=$((NUM1 * num2))
num6=$((NUM1 / num2))

echo "5 + 4 = $num3"
echo "5 - 4 = $num4"
echo "5 * 4 = $num5"
echo "5 / 4 = $num6"

# MATH
echo $(( 5 ** 2 ))
echo $(( 5 % 4 ))

# ASSIGNMENT
# -= *= /=

# COMPARISON
# -gt Greater than
# -ge Greater or equal
# -eq Equal
# -ne Not equal
# -le Less or equal
# -lt Less than

rand=5
let rand+=4
echo "$rand"

echo "rand++ = $(( rand++ ))" # Increment after returning
echo "++rand = $(( ++rand ))" # Increment before returning
echo "rand-- = $(( rand-- ))" # Increment after returning
echo "--rand = $(( --rand ))" # Increment before returning

num7=1.2
num8=3.4
num9=$(python -c "print $num7+$num8") # # Run any python command within a shell script
echo $num9

# PRINT MULTILINE TEXT
cat<< END
This text
prints on
many lines.
END

# FUNCTIONS
getDate(){ # Define the function
  date
  return 
}
getDate # Call the function just defined

# LOCAL VS. GLOBAL VARIABLES
name="Chris"
demLocal(){
  local name="Mike"
  echo $name
  return
}
demLocal

echo "$name"

getSum(){
  local num3=$1
  local num4=$2
  local sum=$((num3+num4))
  echo $sum
}

# CONDITIONALS
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
