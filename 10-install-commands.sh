#!/bin/bash/

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "ERROR: PLease run this script with root user"
      exit 1 
else

echo "you are running with root access"
fi

dnf list installed mysql


# check already installed or not. if Installed $? is 0, then
# If not installed $? is not 0. expression is true
if [ $? -ne 0 ]
then
echo "Installing MYSQL is....SUCCESS"
else
echo "Installing MYSQL is ....FAILURE"
exit 1
fi
else
echo "Mysql is already installed .. nothing to do"
fi

# dnf install mysql -y

# if [ $? -eq 0 ]
# then
# echo "Installing MYSQL is... SUCCESS"
# else 
# echo "Installing MYSQL is ... FAILURE"
# exit 1
# fi
