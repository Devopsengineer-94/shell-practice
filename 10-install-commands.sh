#!/bin/bash/

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "ERROR: PLease run this script with root user"
      exit 1 
else

echo "you are running with root access"
fi

dcf install mysql -y

if [ $? -eq 0 ]
then
    echo "Installing MYSQL is.....SUCCESS"
else 
    echo "Installing MYSQL" is ....FAILURE"
    exit 1
fi

