#!/bin/bash
#need to run setpassword.sh first to have a password saved in secret.txt to match against

#Ask the user to type a secret password (hide that input)
read -sp "Please type password : " password

hash=$(echo $password | sha256sum)

#Check the user's password against the hash stored in 'secret.txt'
echo

checkresult='echo $password | sha256sum --status -c secret.txt'
if [ $? -eq 0 ]; then
    echo "Access Granted"
    exit 0
else 
    echo "Access Denied"
    exit 1
fi
