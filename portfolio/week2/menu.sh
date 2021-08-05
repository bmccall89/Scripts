#!/bin/bash
#run passwordcheck.sh first
read -sp "Please type password : " password
hash=$(echo $password | sha256sum)
#Check the user's password against the hash stored in 'secret.txt'
echo
checkresult='echo $password | sha256sum --status -c secret.txt'
if [ $? -eq 0 ]; then
    echo "Access Granted"
else 
    echo "Access Denied"
fi

if [ "Access Granted" ]; then
    echo "Select an option"
    echo "1. Create a folder"
    echo "2. Copy a folder"
    echo "3. Set a password"
else 
    echo "Please try again"
fi

read -p "" selection
if [ "$selection" -eq 1 ]; then
    /bin/bash "foldermaker.sh"
elif [ "$selection" -eq 2 ]; then
    /bin/bash "foldercopier.sh"
elif [ "$selection" -eq 3 ]; then
    /bin/bash "setPassword.sh"
else 
    echo "Invalid selection"
fi

exit 0
