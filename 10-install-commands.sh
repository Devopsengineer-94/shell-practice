#!/bin/bash/

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "ERROR: PLease run this script with root user"
else
echo "you are running with root access"
fi

dcf install mysql -y

