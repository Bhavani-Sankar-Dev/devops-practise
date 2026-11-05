#!/bin/bash

###############################
# Author: Bhavani Sankar
# Date: 01-11-26
#
# This script outputs the node health
# Version: v1
# #############################

set -x #debug mode
set -e # exits the script when there is an error
set -o pipefail #this one handles errors with the pipes too:
df -h
free -g
nproc
ps -ef | python3
pf -ef | grep python3 | awk F" " '{print $2}'

echo "This is a basic script"
