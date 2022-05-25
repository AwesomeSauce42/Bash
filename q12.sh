#!/bin/bash
echo "Enter your filename"
read newfile1
if [ -e "$newfile1" ]
then
echo "File is found"
file $newfile1*
else
   echo "File is not found"
fi