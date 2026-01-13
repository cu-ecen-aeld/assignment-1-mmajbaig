#!/bin/bash

if [ $# != 2 ]
then
	echo "Please provide writedir and writestr"
	exit 1
fi

writedir=$1
writestr=$2

# Extract the directory path and create the destination directory 
mkdir -p "$(dirname "$writedir")"
if [ $? != 0 ]
then
	echo "ERROR!!! Unable to create destination directory"
	exit 1
fi

echo $writestr > $writedir

if [ $? != 0 ]
then
	echo "ERROR!!! Unable to create file"
	exit 1
fi
