#!/bin/bash

rand_str="A random string"

echo "String Length : ${#rand_str}" # Hash before symbol to print its length
echo "${rand_str:2}" # Return from index 2 to end
echo "${rand_str:2:7}" # Return from index 2 to index 7
echo "${rand_str#*A }" # Return everything from "A " forward.
