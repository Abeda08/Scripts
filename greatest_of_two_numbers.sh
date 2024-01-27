#!/bin/bash

# Prompt the user for input
echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2

# Compare the two numbers
if [ $num1 -gt $num2 ]; then
  echo "$num1 is greater than $num2"
elif [ $num1 -lt $num2 ]; then
  echo "$num2 is greater than $num1"
else
  echo "Both numbers are equal"
fi
