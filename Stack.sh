#!/bin/bash


# check whether the user running the script is root user or not.

ID=$(id -u)
if [ "$ID" -ne 0 ]; then
   echo "you need to be root user"
   exit 1
fi


log=/tmp/stack.log

stat() {
    if [ $1 -eq 0 ]; then
        echo -e "\e[32m success \e[0m"
    else
        echo -e "\e[31m success \e[0m"
    fi
}


echo -n "Installing Webserver: "
yum install httpd -y &> $log
stat $?




