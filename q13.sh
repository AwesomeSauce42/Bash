#!/bin/bash

echo Enter file name: 
read myfile

if [ -r $myfile ]
then
     echo "File has read permission"
     touch temp
     cp $myfile temp
     cat temp

else
     echo "You don't have read permission"
fi

