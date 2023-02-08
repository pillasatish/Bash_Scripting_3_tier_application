#!/bin/bash


# check whether the user running the script is root user or not.

ID=$(id -u)
if [ "$ID" -ne 0 ]; then
   echo "you need to be root user"
   exit 1
fi

echo -n "Installing Webserver: "
yum install httpd -y &> /tmp/stack.log
if [ $? -eq 0 ]; then
   echo "success"
else
    echo "fail"
fi





