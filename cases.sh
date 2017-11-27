#!/bin/bash

read -p "How old are you : " age

case $age in
[0-4]) # Case 0 to 4
  echo "Too young for school"
  ;;

5) # Age is 5
  echo "Go to Kindergarten"
  ;;
[6-9]|1[0-8]) # Age is 6-9 .... not sure.
  grade=$((age-5))
  echo "Go to grade $grade"
  ;;

*) # Default case
  echo "You are too old for school"
  ;;
esac

can_vote=0
age=18

((age >= 18?(can_vote=1):(can_vote=0))) # ternary: if age > 18, can_vote equals 1 else 0
echo "Can Vote : $can_vote"

