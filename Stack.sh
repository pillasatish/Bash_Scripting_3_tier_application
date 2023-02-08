#!/bin/bash


# check whether the user running the script is root user or not.

ID = $(id -u)
if [ "$ID" -ne 0 ]; then
    echo "you need to be root user"
    exit 1






