#!/bin/bash

#######################
# Description:
# Sums the first 3 inputs by the user and then executes "subtractMachine.sh"
# using the sum and the fourth input from the user.
#
# Command Line Arguments:
# Arg 1: First number to be summed.
# Arg 2: Second number to be summed.
# Arg 3: Third number to be summed.
# Arg 4: Second argument to be fed into "subtractMachine.sh"
#
# Example Invocation:
# ./threeAmigos.sh 1 2 3 4
######################

# Sums the first three Arguments
Sum=$(($1+$2+$3))

# Prints out the Sum
echo "The sum of the first 3 Arguments is: $Sum"

# Executes "subtractMachine.sh" using the sum as the first argument and the
# fourth argument as the second argument.
./subtractMachine.sh $Sum $4
