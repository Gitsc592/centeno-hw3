#!/bin/bash

###########################
# Description:
# Takes two numbers inputted by the user and subtracts the smaller number from
# the larger number and outputs it. Finally, the script takes the difference and
# uses it to count down to 1, outputting each step to the user.
#
# Command Line Arguments:
# Arg 1: Number 1
# Arg 2: Number 2
#
# Example Invocation:
# ./subtractMachine 5 10
###########################

# Checks if $1 is less than $2
if [ $1 -lt $2 ]
then
  # $2 is greater
  echo "$2 is greater than $1"
  Difference=$(($2-$1))
else
  # $1 is greater
  echo "$1 is greater than $2"
  Difference=$(($1-$2))
fi

# Prints the difference
echo "The difference is: $Difference"

# Counts down the difference to 1
while [ $Difference -gt 0 ]
do
  echo "Count Dount = $Difference"
  ((Difference--))
done
