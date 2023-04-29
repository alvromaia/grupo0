#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <num1> <num2>"
  exit 1
fi

sum=$(( $1 + $2 ))

echo "The sum of $1 and $2 is: $sum"
