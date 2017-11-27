#!/bin/bash

fav_nums=(3.14 2.718 .57721 4.6692) # Assign multiple values to a new array. Note that there is no comma separation.
echo "Pi : ${fav_nums[0]}"

fav_nums[4]=1.618 # Assign a value to an element. Will also create the element

echo "GR : ${fav_nums[4]}" # Print an element

fav_nums+=(1 7) # Append two ints to array

for i in ${fav_nums[*]}; do # Loop to print every element in the array (*)
  echo $i
done

for i in ${fav_nums[@]}; do # Alternative syntax to print every array element.
  echo $i
done

echo "Array Length : ${#fav_nums[@]}" #hash symbol returns the length of the symbol
echo "Index 3 Length : ${#fav_nums[3]}"

sorted_nums=($(for i in "${fav_nums[@]}"; do
  echo $i;
done | sort))

for i in ${sorted_nums[*]}; do
  echo $i
done

unset 'sorted_nums[1]' # Delete an element.
unset sorted_nums # Delete an array.
