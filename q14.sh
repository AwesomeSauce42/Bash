#!/bin/bash

echo Enter directory name: 
read dir
x=$(find / $dir -maxdepth 1 -type f -printf . | wc -c)
echo $((x-1))