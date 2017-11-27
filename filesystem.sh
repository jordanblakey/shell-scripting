!/bin/bash

# WORKING WITH FILES

file1="./test_file1"
file2="./test_file2"

# CHECK IF FILE EXISTS
if [ -e "$file1" ]; then
  echo "$file1 exists"
fi

# CHECK IF FILE IS A NORMAL FILE
if [ -f "$file1" ]; then
  echo "$file1 exists"
fi

# CHECK IF FILE IS READABLE
if [ -r "$file1" ]; then
  echo "$file1 is readable"
fi

# CHECK IF FILE IS WRITABLE
if [ -w "$file1" ]; then
  echo "$file1 is writable"
fi

