#!/bin/bash
username=$1

if id "$username" > /dev/null 2>&1;
then
	echo "username $username is already exists"
fi

#create user

sudo useradd -m "$username"

echo " set password: "
sudo passwd "$username"

