#!/bin/bash

# WHILE LOOPS
num=1

while [ $num -le 10 ]; do
  echo $num
  num=$((num + 1)) # Need $ for assignment
done


num=1
while [ $num -le 20 ]; do # Not sure why need $num for this conditional but not on the next line.
  if (( ((num % 2)) == 0 )); then
    num=$((num + 1))
    continue
  fi

  if ((num >= 15)); then
    break
  fi

  echo $num
  num=$((num + 1))
done

until [ $num -gt 10 ]; do # do, then, done, fi, are all just curly bracket equvalents.
  echo $num # Need $ to print, too
  num=$((num + 1))
done

# FOR LOOPS
for (( i=0; i <= 10; i=i+1)); do # C style loop. 
  echo $i
done

for i in {A..Z}; do
  echo $i
done

