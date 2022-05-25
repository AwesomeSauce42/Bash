#!/bin/bash

cfile=$1
op=$2

chmod +x $cfile

gcc $cfile -o temp
./temp > /tmp/$op

cd /tmp
cat < $op

