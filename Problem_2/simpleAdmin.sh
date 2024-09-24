#!/bin/bash

######################
# Description:
# Created a directory within a directory, both name by arguments inputted by the
# user. The script then creates a text file with the text "Hello world!" within
# that lowest directory with a name inputted by the user. Finally, a soft link
# will be created to that lowest directory which is named by the user.
#
# Command Line Arguments:
# Arg1: Directory 1 Name
# Arg2: Directory 2 Name (Will be placed within Directory 1)
# Arg3: Text File Name
# Arg4: Soft Link Name (Linked to Directory 2)
#
# Example Invocation
# ./simpleAdmin.sh Dir1 Dir2 Msg.txt Link_Dir2
#####################

# Creates directory in working directory using the first argument as the name.
echo -n "Creating directory named $1... "
mkdir ./$1
echo "Done!"

# Creates directory in Arg 1 directory using the second argument as the name.
echo -n "Creating directory named $2 under $1... "
mkdir ./$1/$2
echo "Done!"

# Writes "Hello World!" to a file with the name used by the third argument and
# saves it to the directory in Arg 2
echo -n "Creating text file named $3 under $2... "
echo "Hello world!" > ./$1/$2/$3
echo "Done!"

# Creates a soft link from working directory to the Arg 2 directory, uses the
# fourth argument as the name for the softlink.
echo -n "Creating a soft link named $4 to $2... "
ln -s ./$1/$2 $4
echo "Done!"
