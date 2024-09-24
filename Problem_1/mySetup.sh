#!/bin/bash

#################
# Description:
# The script sets the CPU frequency to 600 MHz, then it
# displays information about the CPU. Then, it will create
# a variable called "location" which which contains the home
# directory and prints it. Finally, a variable called "items" will be created
# which contains the number of items in the working directory and prints it.
#
# Command Line Arguments:
# None
#
# Example Invocation:
# ./mySetup.sh
################

# Set the CPU frequency to 600 MHz
sudo cpufreq-set -f 600MHz

# Displays info about the CPU
cpufreq-info

# Creates "location" variable and assigns it to home directory
location=$HOME

# Prints "location" variable
echo $location

# Get current number of items in working directory
items=$(ls | wc -w)

# Prints "items" variable
echo $items
